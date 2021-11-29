class User
  attr_accessor :first_name, :last_name, :email
  attr_writer   :errors

  def initialize(first_name:, last_name:, email:)
    @first_name = first_name
    @last_name  = last_name
    @email      = email
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def validate!
    validate_first_name
    validate_last_name
    validate_email
  end

  def validate_first_name
    value_empty?(first_name, :first_name)
    value_string?(first_name, :first_name)
    atleast?(first_name, 3, :first_name)
  end

  def validate_last_name
    value_empty?(last_name, :last_name)
    value_string?(last_name, :last_name)
    atleast?(last_name, 3, :last_name)
  end
  
  def validate_email
    value_empty?(email, :email)
    value_string?(email, :email)
    value_matched?(email, /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, :email)
  end
    
  def value_matched?(value, regexp, attr_name)
    return true if value.match?(regexp)

    errors << "#{attr_name} does not meet the requirements"
    false
  end

  def value_empty?(value, attr_name)
    return true unless value.nil?

    errors << "#{attr_name} must not to be empty"
    false
  end

  def value_string?(value, attr_name)
    return true if value.is_a?(String)

    errors << "#{attr_name} must be string"
    false
  end

  def atleast?(value, elemet_size, attr_name)
    return true if value.to_s.size >= elemet_size

    errors << "#{attr_name} must countain atleast #{elemet_size}"
    false
  end

  def errors
    @errors ||= []
  end
end