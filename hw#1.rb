# 1
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі назву тварини.
# Після цього, вивести в консоль наступний текст I like _animal_, де замість _animal_ повинно бути значення отримане з консолі

puts 'Please, enter a name of the animal'
name = gets.chomp
puts "I like #{name}"

# 2
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі ваш вік.
# Після цього, вивести в консоль, через скількі років вам буде 100 (Текст можете придумати самі)

puts 'Please, enter your age'
age = gets.to_i
puts "In #{100 - age} years you`ll be 100"

# 3
# Написати скрипт в який, використовуючи метод gets, потрібно передати з консолі список з трьох хоббі та записати їх в змінну
# Приклад вводу: 
# 'football, programming, hiking'
# Після цього, потрібно обрати випадкове хоббі та вивести в консоль наступний текст Tell me something about _random_hobby_
# де замість _random_hobby_ повинно бути випадкове хоббі
hobbies = Array.new
for i in 0..2
    puts 'Please, enter your hobby'
    h = gets.chomp
    hobbies.push(h)
end

rundom_hobby = hobbies.shuffle.first
puts "Tell me something about #{rundom_hobby}"


# 4*
# Дано дві змінні:
# variable_1 = 1
# variable_2 = 2
# Потрібно щоб змінні variable_1 та variable_2 обмінялися своїми значеннями без використання третьої змінної

# 5**
# Написати скрипт який порахує кількість ключив хеша з назвою key без урахування його типу та реєстру, та виведе цю інформацію в консоль
# hash = {
#   1    => 2,
#   nil  => 3,
#  'kEy' => :value_1,
#  :key  => :value_2,
#   Key:    :value_3
# }