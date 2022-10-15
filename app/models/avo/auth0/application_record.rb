module Avo
  module Auth0
    class ApplicationRecord < ActiveRecord::Base
      self.abstract_class = true
    end
  end
end
