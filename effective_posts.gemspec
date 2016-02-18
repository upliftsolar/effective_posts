$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'effective_posts/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "effective_posts"
  s.version     = EffectivePosts::VERSION
  s.authors     = ["Code and Effect"]
  s.email       = ["info@codeandeffect.com"]
  s.homepage    = "https://github.com/code-and-effect/effective_posts"
  s.summary     = "A blog implementation with WYSIWYG content editing, post scheduling, pagination and optional top level routes for each post category."
  s.description = "A blog implementation with WYSIWYG content editing, post scheduling, pagination and optional top level routes for each post category."
  s.licenses    = ['MIT']

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", [">= 3.2.0"]
  s.add_dependency "haml-rails"
  s.add_dependency "sass-rails"
  s.add_dependency "kaminari"
  s.add_dependency "nokogiri"
  s.add_dependency "simple_form"
  s.add_dependency "effective_ckeditor", '>= 1.2.0'
  s.add_dependency "effective_datatables", '>= 2.0.0'
  s.add_dependency "effective_regions", '>= 1.6.9'

  # s.add_development_dependency "sqlite3"

  # s.add_development_dependency "factory_girl_rails"
  # s.add_development_dependency "rspec-rails"
  # s.add_development_dependency "shoulda-matchers"
  # s.add_development_dependency "capybara"
  # s.add_development_dependency "poltergeist"

  # s.add_development_dependency "guard"
  # s.add_development_dependency "guard-rspec"
  # s.add_development_dependency "guard-livereload"

end
