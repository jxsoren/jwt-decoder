require 'json'
require 'jwt'

puts 'Enter your encoded JWT:'

user_jwt_input = gets.chomp

begin
  raise ArgumentError if user_jwt_input.empty?

  decoded_jwt = JWT.decode(user_jwt_input, nil, false)

  json_payload = JSON.pretty_generate(decoded_jwt.first)

  print "\n"
  puts json_payload
  print "\n"

rescue ArgumentError
  print "\n"
  puts 'User input was empty or invalid. Please try again.'
  print "\n"
rescue JWT::DecodeError
  print "\n"
  puts 'Invalid JWT. Please check your JWT and try again.'
  print "\n"
end
