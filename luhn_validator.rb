module LuhnValidator
  # Validates credit card number using Luhn Algorithm
  # arguments: none
  # assumes: a local String called 'number' exists
  # returns: true/false whether last digit is correct
  def validate_checksum
    nums_a = number.to_s.chars.map(&:to_i)
    # TODO: use the integers in nums_a to validate its last check digit
    # Double every second digit from the right
    nums_a.reverse.each_with_index { |digit, index| nums_a[index] *= 2 if index.odd? }
    # Sum the nums_a of the numbers (if any are double nums_a)
    sum = nums_a.map { |digit| digit > 9 ? digit - 9 : digit }.sum
    # Check if the sum is divisible by 10
    sum % 10 == 0
  end
end



