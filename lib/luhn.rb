module Luhn
  def self.is_valid?(number)
    a = []
    
    while number > 0 
      a << number % 10
      number = number / 10
      if number % 10 * 2 >= 10
        a << number % 10 * 2 - 9
      else 
        a << number % 10 * 2
      end 
      number = number / 10
    end
    
    sum = 0
    a.each do |num|
      sum = sum + num
    end
    if sum % 10 == 0
      return true
    else
      return false
    end
  end
end

