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

  spec.add_dependency "diffy"
end
