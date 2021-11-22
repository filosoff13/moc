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

  def errors
    arrors = []
    if
      # self.first_name.nil? || self.first_name.empty?
      self.first_name.nil?
    then
      arrors = arrors.push("first_name can not be empty")
    end

    if self.first_name.instance_of?(String) != true
    then
      arrors = arrors.push("first_name must be a string")
    end

    if
      self.first_name.length < 3
    then
      arrors = arrors.push("first_name is invalid")
    end

    if
        # self.last_name.nil? || self.last_name.empty?
      self.last_name.nil?
    then
      arrors = arrors.push("last_name can not be empty")
    end

    if
      self.last_name.instance_of?(String) != true
    then
      arrors = arrors.push("last_name must be a string")
    end

    if
    self.last_name.length < 3
    then
      arrors = arrors.push("last_name is invalid")
    end

    if
      # self.email.nil? || self.email.empty?
    self.email.nil?
    then
      arrors = arrors.push("email can not be empty")
    end

    if
    self.email.instance_of?(String) != true
    then
      arrors = arrors.push("email must be a string")
    end

    if
    self.is_valid_email?
    then
      arrors = arrors.push("email is invalid")
    end

    return arrors
  end
end
