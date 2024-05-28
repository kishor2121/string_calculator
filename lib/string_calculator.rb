# lib/string_calculator.rb
class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = ",|\n"
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    end

    num_array = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = num_array.select { |num| num < 0 }

    if negatives.any?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    num_array.reduce(0, :+)
  end
end
