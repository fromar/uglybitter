# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_homebrew_henchman_session',
  :secret      => '24a0f7ab44e3aeddf1163dc567d72481c77907852469269964eeb546949eb6de35b7ab4745bc5a058c07e5df6ac6893ef31eb530bf94d7f88e8af8d47c00fe25'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
