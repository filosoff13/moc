# Task #2
# Write a validation on the string that will check the entered string for parentheses.
# There are four types of brackets. Which open '(', '{', '[', '<' and closing brackets ')', '}', ']', '>'

# 1) Write a class that will accept the string and a method that will check whether the parentheses are closed or not.
# Brackets.new('{(})').valid?   # => false
# Brackets.new('{{[]').valid?   # => false
# Brackets.new('{[()]}').valid? # => true
# Brackets.new('<<>>').valid?   # => true

# 2)* Extend the String class (Monkey Patching in Ruby), add the method that was implemented in the first point
# '{(})'.valid?   # => false
# '{{[]'.valid?   # => false
# '{[()]}'.valid? # => true
# '<<>>'.valid?   # => true


# Requirements:
# > Each task in a separate file
# > Does not copy the task description to the file
# > Use only English language