def caesar_cipher(text, shift)
  
  encrypted_text = ''

  # Iterate through each character
  text.each_char do |c|
    # If character is alpha shift
    if c =~ /[[:alpha:]]/
      char_code = c.downcase.ord
      shifted_code = (char_code - 97 + shift) % 26 + 97
      
      # Preserve the case of the original character
      if c == c.downcase
        encrypted_text += shifted_code.chr
      else
        encrypted_text += shifted_code.chr.upcase
      end

    # If the character is not alpha just append to the encrypted text
    else
      encrypted_text += c
    end
  end

  encrypted_text
  
end

puts caesar_cipher('Hello there!', 20)