# lib/string_calculator.rb
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n"
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    end

    numbers.split(/#{delimiter}/).map(&:to_i).reduce(0, :+)
  end
end
