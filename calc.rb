# encoding: utf-8

# Так как программа преобразует входящие строковые данные в числа с плавающей запятой, 
# ошибка деления на 0 не возникает (Результат - Infinity)

def get_value
  while true
    val = gets.chomp

    case val
      when /[-+]?[0-9]*\.?[0-9]+/
        return val.sub(",", ".").to_f
      else
        print "\"#{val}\" - недопустимое число. Пожалуйста, введите правильное: "
    end
  end
end

def get_operation
  while true
    op = gets.chomp

    case op
      when /[\+\-\*\/]/
        return op
      else
        print "\"#{op}\" - недопустимая операция. Пожалуйста, введите правильную [+, -, *, /]: "
    end
  end
end

def calculate(first_value = 0.0, second_value = 0.0, operation = "+")
  if operation == "+"
    first_value + second_value
  elsif operation == "-"
    first_value - second_value
  elsif operation == "*"
    first_value * second_value
  elsif operation == "/"
    first_value / second_value
  else
    "\n\"#{operation}\" - недопустимая операция."
  end      
end

while true
  print "\nВведите первое число: "
  first_value = get_value
  print "Введите математическое действие [+, -, *, /]: "
  operation = get_operation
  print "Введите второе число: "
  second_value = get_value    

  puts "\nРезультат: #{calculate(first_value, second_value, operation)}"

  print "\nПродолжить? [Y/N]: "
  choice = gets.chomp

  case choice
    when /[^YyДд]/
      break
  end
end