$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "active_storage_silent_logs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_storage_silent_logs"
  s.version     = ActiveStorageSilentLogs::VERSION
  s.authors     = ["Igor Kasyanchuk"]
  s.email       = ["igorkasyanchuk@gmail.com"]
  s.homepage    = "https://github.com/igorkasyanchuk/active_storage_silent_logs"
  s.summary     = "Silent your Active Storage logs to avoid \"noise\" in logs."
  s.description = "Silent your Active Storage logs to avoid \"noise\" in logs."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "pry"
  s.add_development_dependency "puma"
end
