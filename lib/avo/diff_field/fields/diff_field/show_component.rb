# frozen_string_literal: true

class Avo::DiffField::Fields::DiffField::ShowComponent < Avo::Fields::ShowComponent
  def initialize **args
    super(**args)
    @diffy_value = @field.value&.map do |k, v|
      case @field.record.try(:action) || @field.record.try(:event)
      when 'update'
        left_value = v[0]
        right_value = v[1]
      when 'destroy'
        left_value = v
        right_value = ''
      when 'create'
        left_value = ''
        right_value = v
      end
      [k, Diffy::Diff.new(left_value.to_s, right_value.to_s, format: :html, include_plus_and_minus_in_html: true)]
    end
  end
end
