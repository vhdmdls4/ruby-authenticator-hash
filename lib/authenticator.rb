# frozen_string_literal: true
def Authenticator
  MAX_ATTEMPTS = 4

  def initialize(users)
    @users = users
    @attempts = 0
  end
  def authenticator_session
    puts 'Welcome to the authenticator.'
    puts 'This program will take input from the user and compare passwords.'


  end
end