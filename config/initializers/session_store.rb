# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_resample_app_session',
  :secret      => '4dd0a386b29a5ca74ff19bf6e68aec9e70233cf7abd26feaed0006b098b149a7290219a8f382ce14965d6a16c2661648bd26661b9627dd0f615639a5434880c3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
