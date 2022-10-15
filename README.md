# Avo::Auth0
Add Auth0 authentication to Avo


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'avo'
gem 'avo-auth0', git: 'https://github.com/aspick/avo-auth0.git'
```

Mount this plugin
```diff
# config/routes.rb
 Rails.application.routes.draw do
   mount Avo::Engine, at: Avo.configuration.root_path
+  mount Avo::Auth0::Engine, at: '/auth'
+  match '/logout' => redirect('/auth/auth0/logout), as: :destroy_current_user_session, via: [:get, :delete]
 end
```

Add Auth0 config file
```yaml
# config/auth0.yml
development:
  auth0_domain: <auth0 domain>
  auth0_client_id: <auth0 client id>
  auth0_client_secret: <%= ENV["AUTH0_CLIENT_SECRET"] %>
```


## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
