class Brackets
  def initialize(characters)
    @characters = characters
  end

  def characters
    @characters
  end

  def valid?
    string = self.characters

    return puts "false #{string}" if string.length.odd?
    return puts "false #{string}" if string =~ /[^\[\]\(\)\{\}\<\>]/

    pairs = { '{' => '}', '[' => ']', '(' => ')', '<' => '>' }

    stack = []
    string.chars do |bracket|
      if (expectation = pairs[bracket])
        stack << expectation
      else
        return puts "false #{string}" unless stack.pop == bracket
      end
    end

    if
    stack.empty?
    puts "true #{string}"
    else
      return puts "false #{string}"
    end
  end
end
