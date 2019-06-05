class CaesarCipher
  def initialize(key)
    @key = key
  end

  def shift_chars_by_offset(message, key)
    message.each_codepoint.inject("") do |message, letter|
      message.concat(letter + key)
    end
  end
  
  def encode(message)
    shift_chars_by_offset(message, @key)
  end
  
  def decode(message)
    shift_chars_by_offset(message, (0 - @key))
  end
end

puts CaesarCipher.new(3).encode("Some message")