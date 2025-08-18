# Configure Rails Environment
ENV["RAILS_ENV"] = "test"

require_relative "../test/dummy/config/environment"
ActiveRecord::Migrator.migrations_paths = [File.expand_path("../test/dummy/db/migrate", __dir__)]
ActiveRecord::Migrator.migrations_paths << File.expand_path('../db/migrate', __dir__)
require "rails/test_help"
require "omniauth"

# Configure OmniAuth for testing
OmniAuth.config.test_mode = true
OmniAuth.config.mock_auth[:auth0] = OmniAuth::AuthHash.new({
  provider: 'auth0',
  uid: '12345',
  info: {
    name: 'Test User',
    email: 'test@example.com',
    image: 'http://example.com/avatar.jpg'
  },
  credentials: {
    token: 'mock_token',
    expires_at: Time.now + 1.week,
    expires: true
  },
  extra: {
    raw_info: {
      name: 'Test User',
      email: 'test@example.com',
      picture: 'http://example.com/avatar.jpg',
      sub: 'auth0|12345'
    }
  }
})

# Load fixtures from the engine
if ActiveSupport::TestCase.respond_to?(:fixture_path=)
  ActiveSupport::TestCase.fixture_path = File.expand_path("fixtures", __dir__)
  ActionDispatch::IntegrationTest.fixture_path = ActiveSupport::TestCase.fixture_path
  ActiveSupport::TestCase.file_fixture_path = ActiveSupport::TestCase.fixture_path + "/files"
  ActiveSupport::TestCase.fixtures :all
end
