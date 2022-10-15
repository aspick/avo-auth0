require_relative "lib/avo/auth0/version"

Gem::Specification.new do |spec|
  spec.name        = "avo-auth0"
  spec.version     = Avo::Auth0::VERSION
  spec.authors     = ["Yugo TERADA"]
  spec.email       = ["yugo@18th-lab.com"]
  spec.homepage    = "https://github.com/aspick/avo-auth0"
  spec.summary     = "auth0 integration for avo"
  spec.description = "auth0 integration for avo"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/aspick/avo-auth0"
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.7"
  spec.add_dependency "avo"
  spec.add_dependency "omniauth-auth0"
  # spec.add_dependency "omniauth-rails_csrf_protection"
end
