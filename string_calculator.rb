class StringCalculator
    def self.add(numbers)
      return 0 if numbers.empty?
  
      numbers = numbers.gsub("\n", ",")
      if numbers.start_with?("//")
        delimiter = numbers[2]
        numbers = numbers[4..]
      else
        delimiter = ","
      end
  
      nums = numbers.split(delimiter).map(&:to_i)
      negatives = nums.select { |n| n < 0 }
      raise "Negative numbers not allowed: #{negatives.join(",")}" unless negatives.empty?
  
      nums.sum
    end
  end
  