module LuhnCheck
  def self.doubled_up_array(number)
    luhnArray = []
    if odd? number 
      number.to_s.chars.each_with_index do |oddChar, i|
        if i.odd?
          charTimesTwo = oddChar.to_i * 2
          luhnArray << charTimesTwo
        else
          luhnArray << oddChar.to_i
        end
      end
    end
    luhnArray
  end

  def self.odd?(number)
    number.to_s.length % 2 != 0
  end

end
