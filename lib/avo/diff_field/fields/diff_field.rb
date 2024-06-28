class Avo::DiffField::Fields::DiffField < Avo::Fields::BaseField
  def initialize(id, **args, &block)
    super(id, **args, &block)
    
    hide_on [:forms]
  end
end