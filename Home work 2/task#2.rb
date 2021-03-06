# Task #2
# Написати програму, яка буде пропонувати користувачу ввести певне число.
# У відповідь на введене число, програма має виводити в консоль задане число помножене на 256 та пропонувати ввести ще одне число.
# Наведена вище логіка має повторюватись безліч кількість разів.
# У випадку, якщо програма отримала число, яке містить у своєму записі більше ніж одну одиницю (1),
# потрібно вивести користувачу якесь довільне повідомлення про завершення виконання цієї програми та зупинити програму.
#
# Приклад взаємодії користувача з цією програмою:
# Введіть число:
# 1
# Результат виконання: 256
# Введіть число:
# 171
# Умови недотримані, зупиняю виконання програми.

# loop do
#     puts 'Please, enter a number'
#     number = gets.to_i
#     num = number.digits
#     count_of_numbers = num.count

#     count_of_ones = 0
#     i = 0
#     count_of_numbers.times{
#         if num[i] == 1
#         then
#             count_of_ones += 1
#             i += 1
#         else
#             i += 1
#         end
#     }

#     if count_of_ones > 1
#         puts 'Conditions are incorrect, so stop the program'
#         break
#     else result = 256 * number
#         puts "The result is #{result}"
#     end
# end

loop do
    user_input = gets.chomp
    
     if user_input.match(/(1\d*){2,}/)
      puts 'Cycle is over'
      break
     else
      puts user_input.to_i * 256
     end
  end