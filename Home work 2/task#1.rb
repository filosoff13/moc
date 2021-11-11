# Task #1
# Створити програму, яка буде отримувати від користувача назву тварини.
# В залежності від введеної тварини, виводити в консоль звук, який ця тварина видає.
# Вивід має бути у такому форматі - "Назва_тварини говорить - звук_тварини". Назва тварини має починатись з великої літери.
# Якщо була введена назва тварини, яка не покривається програмою (або щось ліве), то вивести в консоль відповідне повідомлення.
# Програма має покривати 4-5 назв тварин, в незалежності від регістру введених назв.
#
# Приклад взаємодії користувача з цією програмою:    |   Приклад взаємодії користувача з цією програмою:
# Введіть назву тварини:                             |   Введіть назву тварини:
# супер_вЕдміДь                                      |   сУпер_веДмідь
# Супер_ведмідь говорить - ведмежачий звук           |   Супер_ведмідь говорить - ведмежачий звук

puts 'Please, enter a name of the animal'
arr = ['super_bear' => 'bear sound', 'super_wolf' => 'wolf sound', 'super_chicken' => 'chicken sound']
name = gets.chomp.downcase

puts name
case name
when 'super_bear'
    puts "#{name} says - bear sound"
when 'super_wolf'
    puts "#{name} says - wolf sound"
when 'super_chicken'
    puts "#{name} says - chicken sound"
when 'super_dog'
    puts "#{name} says - dog sound"
else
    puts "Error: name has an invalid value (#{name})"
end
