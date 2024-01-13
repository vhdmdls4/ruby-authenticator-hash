# frozen_string_literal: true
class Authenticator
  MAX_ATTEMPTS = 3

  attr :users
  attr_accessor :attempts

  def initialize(users)
    @users = users
    @attempts = 0
  end

  def authenticate(email, password)
    user = users.find { |user| user[:email] == email && user[:password] == password }
    user ? user : nil
  end

  def run
    puts 'Welcome to the authenticator.'
    puts 'This program will take input from the user and compare passwords.'
    puts "If password is correct, you will get back the user object"
    30.times do print "-" end

    loop do

      if MAX_ATTEMPTS-attempts == 0
        puts "Max attempts reached"
        break
      end

      30.times do print "-" end

      puts "\nEmail: "
      email = gets.chomp.downcase
      puts "Password: "
      password = gets.chomp

      @attempts += 1

      if authenticate(email, password)
        puts "User found: #{authenticate(email, password)}"
        break
      end

      puts "User not found"
      puts "Still have #{MAX_ATTEMPTS-attempts} attempts"
    end
  end

end