require_relative "fields/diff_field"
require "diffy"

module Avo
  module DiffField
    class Plugin < Avo::Plugin
      class << self
        def boot
          Avo.plugin_manager.register_field :diff, Avo::DiffField::Fields::DiffField
        end

        def init
        end
      end
    end
  end
end
