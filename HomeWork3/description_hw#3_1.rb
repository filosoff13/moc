# Task #1
# Write a User class that will have the following fields:
# - first_name
# - last_name
# - email

# 1) Create 'getter' and 'setter' methods for all fields.
# 2) Write a 'full_name' method that should return the first and last name
# 3) Create a method 'is_valid_email?', which will check the email is correct and return boolean values. Use Regex /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
# - true if the email is correct
# - false if email is incorrect
# 4) Create 'errors; method that returns an array of errors to the fields
# first_name - 1. if the value is empty
#              2. if the value is not a string
#              3. value must be at least three characters
#
# first_name - 1. if the value is empty
#              2. if the value is not a string
#              3. value must be at least three characters
#
# email      - 1. if the value is empty
#            - 2. if the value is not a string
#            - 3. value must be validated through the regular expression from the third point
#
#
# Example:
# u1 = User.new(first_name: 'John', last_name: nil, email: 'Doe.Johngmailgmail.com')
# puts "First name: #{u1.first_name}" # => John
# puts "Last name: #{u1.last_name}" # =>
# puts "Email: #{u1.email}" # => Doe.Johngmailgmail.com
# puts "Full name: #{u1.full_name}" # => John Do
# puts "Valid_email: #{u1.is_valid_email?}" # => false
# puts "User is valid: #{u1.valid?}" # => false
# puts "Errors: #{u1.errors}" # => ["last_name can not be empty", "last_name must be a string", "email is invalid"]
# puts ''\
#
# u1.last_name = 'Doe'
# u1.email = 'Doe.Johngmail@gmail.com'
# puts "Valid_email: #{u1.is_valid_email?}" # => false
# puts "User is valid: #{u1.valid?}" # => false
# puts "Errors: #{u1.errors}" # => ["last_name can not be empty", "last_name must be a string", "email is invalid"]
#
# Console output:
# First name: John
# Last name:
#        Email: Doe.Johngmailgmail.com
# Full name: John
# Valid_email: false
# User is valid: false
# Errors: ["last_name can not be empty", "last_name must be a string", "email is invalid"]
#
# Valid_email: true
# User is valid: true
# Errors: []



# Requirements:
# > Each task in a separate file
# > Does not copy the task description to the file
# > Use only English language