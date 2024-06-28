require "zeitwerk"
require "avo"
require "avo/diff_field/version"
require "avo/diff_field/railtie"

loader = Zeitwerk::Loader.for_gem_extension(Avo)
loader.setup

module Avo
  module DiffField
    # Your code goes here...
  end
end

# loader.eager_load
