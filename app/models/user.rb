class User < ActiveRecord::Base
  # enable has_secure_password
  # AcitveRecord looks for an "email" column
  # as well as a "password_digest"
  # and works with them...
  # to auto-setup BCrypt
  # and salt/hash for us!
  has_secure_password
end
