# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Weblog_session',
  :secret      => 'fa77b1ed2359774d13c156af6943032ab309df67da1c8fe6899610ec8326c9c90b5429204c151799d4d9599c4fd7935e1553c628c6f52a435613b075e91a2806'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
