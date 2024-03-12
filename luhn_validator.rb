module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)

    # Double every second digit from the right, adjust digits if greater than 9, and sum them up
    sum = nums_a.reverse.map.with_index do |digit, index|
      digit *= 2 if index.odd?
      digit -= 9 if digit > 9
      digit
    end.sum

    # Check if the sum % 10 == 0
    (sum % 10)==0
  end
end


