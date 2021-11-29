# 5**
# Написати скрипт який порахує кількість ключив хеша з назвою key без урахування його типу та реєстру, та виведе цю інформацію в консоль
hash = {
    1    => 2,
    nil  => 3,
   'kEy' => :value_1,
   :key  => :value_2,
    Key:    :value_3
  }
  
  hash.keys.count { |key| key.to_s.downcase.eql?('key') }