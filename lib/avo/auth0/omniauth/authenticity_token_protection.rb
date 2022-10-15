require_dependency "omniauth"

module Avo
  module Auth0
    module OmniAuth
      class AuthenticityTokenProtection < ::OmniAuth::AuthenticityTokenProtection
        def self.call(env)
          new(key: :_csrf_token).call!(env)
        end
      end
    end
  end
end
