module CaesarCipher
  ALPHANUMERIC_AND_SPACES_REGEX = /^[[:alpha:][:blank:]]+$/
  
  class Cipher
    def initialize(key)
      @key = key
    end
   
    def encode(message)
      shift_by_offset(message, @key)
    end
    
    def decode(message)
      shift_by_offset(message, (0 - @key))
    end

    private

    def shift_by_offset(message, offset)
      message_stringified = message.to_s
      
      return nil if message_stringified.empty?
      raise ArgumentError, 'Invalid message' unless message_stringified.match(ALPHANUMERIC_AND_SPACES_REGEX)

      message_stringified.each_codepoint.inject("") do |result, char_code|
        result.concat(char_code + offset)
      end
    end
  end
end
