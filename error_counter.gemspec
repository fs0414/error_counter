$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "error_counter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "error_counter"
  spec.version     = ErrorCounter::VERSION
  spec.authors     = ["soramar"]
  spec.email       = ["fujitanisora0414@i.softbank.jp"]
  spec.homepage    = "https://github.com/soramar/error_counter"
  spec.summary     = "Summary of ErrorCounter."
  spec.description = "Description of ErrorCounter."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  spec.add_development_dependency "rails"
end
