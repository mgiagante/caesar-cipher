require_relative 'caesar_cipher/cipher.rb'

class CaesarCipher
  
  def initialize(key)
    @key = key
    @cipher = Cipher.new
  end
 
  def encode(message)
    @cipher.ciphering(message, @key)
  end
  
  def decode(message)
    @cipher.ciphering(message, (0-@key))
  end
end

puts CaesarCipher.new(3).encode("!")
