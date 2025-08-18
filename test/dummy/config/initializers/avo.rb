# For more information regarding these settings check out our docs https://docs.avohq.io
Avo.configure do |config|
  # Dummy configuration for testing
  config.root_path = '/avo'
  config.license = 'community'
  
  # Set a dummy current user method for testing
  config.current_user_method do
    nil
  end
end