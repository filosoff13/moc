# 3
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі список з трьох хоббі та записати їх в змінну
# Приклад вводу:
# 'football, programming, hiking'
# Після цього, потрібно обрати випадкове хоббі та вивести в консоль наступний текст Tell me something about _random_hobby_
# де замість _random_hobby_ повинно бути випадкове хоббі

# Список можливих варіантів діставання випадкового елементу масива
# user_input.sample
# user_input.shuffle.first
# array_length = user_input.size 
# user_input[rand(array_length)]

# hobbies = Array.new
#  3.times{
#     puts 'Please, enter your hobby'
#     h = gets.chomp
#     hobbies.push(h)
# }
hobbies = gets.split(', ')

random_hobby = hobbies.sample
puts "Tell me something about #{random_hobby}"