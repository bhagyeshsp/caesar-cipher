require_relative ".././lib/cipher-decipher"

# This exercise is based on the assignment provided on this link: https://www.theodinproject.com/lessons/ruby-connect-four
# I had created the cipher-decipher file 2 months back and now need to write tests for the methods
# Obviously, I can now see so many problems with my code but intend to write tests with minimal changes to the code

# One of the main issues with the present code is that there is no class, everything is just publicly created methods

# Let's list the methods in the order of their appearance and classify them
# It will help me understand which methods need to be tested

describe "#caesar_cipher" do
  # This is a Public Script method
  # No need to test it
  # ! Although I just noticed that it outputs the last-run method's return value
  # ! For our purposes, we will just test it in the last method and treat this method as a pure Public Script method
end

describe "#string_to_array" do
  # This is a Public Query method
  # Need to test its return value
end

describe "#find_char_to_number_code" do
  # This is a Public Query method
  # Need to test its return value
end

describe "#shift_right" do
  # This is a Public Query method
  # Need to test its return value
end

describe "#shifted_char" do
  # This is a Public Query method
  # Need to test its return value
end
