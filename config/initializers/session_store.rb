# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rtreino_session',
  :secret      => '04519cc91348cb7c5b52564ee5bc2275ec8bc7f0bd6023257113042404d2853907ebe963e752e68ef8ade02daae88f51369ae43b6e73304cd3ab30536d1273ff'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
