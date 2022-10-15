# For more information regarding these settings check out our docs https://docs.avohq.io
Avo.configure do |config|
  config.current_user_method do
    user_info  = session[:userinfo]
    next unless user_info

    user = Struct
      .new(:name, :avatar, :avo_title)
      .new(user_info['name'], user_info['picture'], user_info['email'])

    user
  end

  config.authenticate_with do
    redirect_to '/' unless _current_user.present?
  end
  
  config.current_user_resource_name = 'current_user'
end
