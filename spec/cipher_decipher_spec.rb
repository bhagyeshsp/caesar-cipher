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
  # ? Plan change: as I wrote the other tests and passed, I realized I can test this method too
  # ? Now I realized that my cipher implementation doesn't retain the capital letters
  it "returns a cipher string based on the input string and a shift factor" do
    string_to_cipher = "What a string!"
    shift_factor = 5
    result = "bmfy f xywnsl!"
    expect(caesar_cipher(string_to_cipher, shift_factor)).to eq(result)
  end
end

describe "#string_to_array" do
  # This is a Public Query method
  # Need to test its return value
  it "splits a provided string into its constituents character array" do
    input_string = "What a string!"
    output_array = ["W", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"]
    expect(string_to_array(input_string)).to eq(output_array)
  end
end

describe "#find_char_to_number_code" do
  # This is a Public Query method
  # Need to test its return value
  it "returns a number array mapped to a provided character array" do
    character_array = ["W", "h", "a", "t", " ", "a", " ", "s", "t", "r", "i", "n", "g", "!"]
    number_array = [49, 8, 1, 20, " ", 1, " ", 19, 20, 18, 9, 14, 7, "!"]
    expect(find_char_to_number_code(character_array)).to eq(number_array)
  end
end

describe "#shift_right" do
  # This is a Public Query method
  # Need to test its return value
  it "generates a shifted array by adding the shift factor to each number" do
    input_array = [49, 8, 1, 20, " ", 1, " ", 19, 20, 18, 9, 14, 7, "!"]
    shift_factor = 5
    shifted_array = [2, 13, 6, 25, " ", 6, " ", 24, 25, 23, 14, 19, 12, "!"]
    expect(shift_right(input_array, shift_factor)).to eq(shifted_array)
  end
end

describe "#shifted_char" do
  # This is a Public Query method
  # Need to test its return value
  it "returns a character array mapped from a provided shifted number array" do
    input_array = [2, 13, 6, 25, " ", 6, " ", 24, 25, 23, 14, 19, 12, "!"]
    shifted_char_array = ["b", "m", "f", "y", " ", "f", " ", "x", "y", "w", "n", "s", "l", "!"]
    expect(shifted_char(input_array)).to eq(shifted_char_array)
  end
end
