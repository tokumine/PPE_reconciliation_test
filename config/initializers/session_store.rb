# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_test_join_session',
  :secret      => '812556a19f328010d78fbf89493b16d7ddd8d012bc1b189a86c6870e9ce9a3f79cfe09fa72c360846f286ae690e6bf07f621e844c06c14f97b4684af7b6140f6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
