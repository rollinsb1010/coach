Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :developer unless Rails.env.production?
  # provider :twitter, 'SQFmKa8zQ2mz2wVEcCoUg', 'mfd2PnT8dgcBRxCQaXOH6ipo4ehAl1B4tyhmY2F7U'
  provider :facebook, '106984622805054', '0a7037f44ed1f43fe8b2b82e0cd39c25',
  :client_options => {:ssl => {:ca_path => "/Users/rollinsb/.rvm/usr/ssl" }}                                                 
end