module Avo
  module DiffField
    class Railtie < Rails::Railtie
      initializer "avo-diff_field.init" do
        Avo.plugin_manager.register Avo::DiffField::Plugin
      end
    end
  end
end
