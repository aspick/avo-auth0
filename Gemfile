source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in avo-auth0.gemspec.
gemspec

group :development do
  # 利用側 (backstage-admin, ototoretor-admin) と同じ Avo 3 系でテストする
  gem 'avo', '~> 3.33'
  gem 'sqlite3'
  gem 'sprockets-rails'
end

# To use a debugger
# gem 'byebug', group: [:development, :test]
