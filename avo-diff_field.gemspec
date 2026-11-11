$:.push File.expand_path("lib", __dir__)

require "avo/diff_field/version"

Gem::Specification.new do |spec|
  spec.name = "avo-diff_field"
  spec.version = Avo::DiffField::VERSION
  spec.summary = "Diff field for Avo."
  spec.description = "Diff field for Avo."
  spec.authors = ["Adrian Marin"]
  spec.email = "adrian@adrianthedev.com"

  spec.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md", "avo-diff_field.gemspec", "Gemfile", "Gemfile.lock"]

  spec.homepage = "https://avohq.io"
  spec.license = "MIT"

  # The colors come from the design system Avo 4 introduced. Avo 3 apps stay on the last version they can read.
  spec.add_dependency "avo", ">= 4.0.0"
  spec.add_dependency "diffy"
end
