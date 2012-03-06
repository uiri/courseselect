# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_courseselect_session',
  :secret      => '4ad993976c4858345dcdd05f77ef355f3bc147972c7d8f45b649b1d3a6e9e953da82053b96ecc88039ad9ae40ed438a8997bab92469516c67854c067674f8478'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
