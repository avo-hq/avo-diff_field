require "diffy"

module Avo
  module DiffField
    class Railtie < Rails::Railtie
      initializer "avo-diff_field.init" do
        ActiveSupport.on_load(:avo_boot) do
          Avo.plugin_manager.register_field :diff, Avo::DiffField::Fields::DiffField
        end
      end
    end
  end
end
