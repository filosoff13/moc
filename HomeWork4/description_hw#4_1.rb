#Task 1
# You have two classes, BricksFactory and Brick.
# BricksFactory - should be able to create a given number of bricks, randomly determine the color of each brick,
# and be able to return the total number of unbroken bricks for all time.

# In addition, BricksFactory should have two methods:
#- which must return the last 10 created unbroken bricks of the requested color.
#- which must return a sorted array of unbroken bricks (sorting by color).
# *If you want, you can try writing logic for the Brick class,
# where each brick will know which field it should be sorted by.

# A Brick has three properties - color, serial number, and state.
# Each brick has a 20% chance of being broken when created - so in this case the state field will be set to "broken".
# The serial number is equal to the total count of all successfully created blocks.

#Task 2
#
# In addition to the previous assignment,
# create a module that describes a method with the ability to sort the array by any requested field.
# If the iterated element of the array does not contain the requested field, then:
# - display an appropriate message on the console.
# - place this element in a special array of failed elements.
# - remove this element from the array that we are currently sorting.
# The method should output an array of failed elements to the console and return only the sorted array.
#
# Name of this method should be different from the sort method of the BricksFactory class.
# Override the sort method that was written for BricksFactory. (You can use the keyword "alias" in this task.)

#Task 3**
#
# You need to create a module with your own implementation of attr_accessor (without using "super" keyword).
# Your own accessor should output "this field is empty" if the requested field has no value.
# Create any class that will have multiple fields (4-6),
# and make that class use the overridden attr_accessor method that was previously described in your module.