#config/initalizers/omniauth.rb
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, "6a3069d4a813458f9127554a050e21e0", "500488c4ae494d0f96514fb5b47b168c", {
                             scope: ['email',
                                     'https://www.googleapis.com/auth/gmail.modify'],
      access_type: 'offline'}
end