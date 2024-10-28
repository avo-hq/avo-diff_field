# frozen_string_literal: true

class Avo::DiffField::Fields::DiffField::ShowComponent < Avo::Fields::ShowComponent
  def initialize **args
    super(**args)
    @diffy_value = @field.value&.map do |k, v|
      if @field.record.class == "PaperTrail::Version".safe_constantize
        left_value = v[0]
        right_value = v[1]
      elsif @field.record.class == "Audited::Audit".safe_constantize
        case @field.record.action
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
      end

      [k, Diffy::Diff.new(left_value.to_s, right_value.to_s, format: :html, include_plus_and_minus_in_html: true)]
    end
  end
end
