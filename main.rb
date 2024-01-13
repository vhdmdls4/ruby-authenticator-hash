require_relative './lib/authenticator'

users_db = [{ email: "testmail@.gmail.com", password: "123" }, { email: "test2@.gmail.com", password: "456" }]

auth = Authenticator.new(users_db)

auth.run
