class User
  def initialize(first_name, last_name, email)
    @first_name = first_name
    @last_name = last_name
    @email = email
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def email
    @email
  end

  def first_name=(first_name)
    @first_name = first_name
  end

  def last_name=(last_name)
    @last_name = last_name
  end

  def email=(email)
    @email = email
  end

  def full_name
    "#{self.first_name},  #{self.last_name}"
  end

  def is_valid_email?
    result = self.email.scan(/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i)
    if result[0] != nil
    then
      true
    else
      false
    end
  end
end

u1 = User.new('John', 'Doe', 'Doe.Johngmailgmail.com')
puts "First name: #{u1.first_name}" # => John
puts "Last name: #{u1.last_name}" # =>
puts "Email: #{u1.email}" # => Doe.Johngmailgmail.com
puts "Full name: #{u1.full_name}" # => John Do
puts "Valid_email: #{u1.is_valid_email?}" # => false
# puts "User is valid: #{u1.valid?}" # => false
# puts "Errors: #{u1.errors}" # => ["last_name can not be empty", "last_name must be a string", "email is invalid"]
# puts ''\