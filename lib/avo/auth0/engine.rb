module Avo
  module Auth0
    class Engine < ::Rails::Engine
      isolate_namespace Avo::Auth0
    end
  end
end
