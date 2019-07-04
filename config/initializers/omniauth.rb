Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook,
            ENV['FACEBOOK_APP_ID'],
            ENV['FACEBOOK_SECRET'],
            # scope: 'email,user_likes'
            scope: 'email', info_fields: 'name', display: 'page', image_size: 'square'
end
