class Cipher
  def ciphering (message, key)
    message_stringified = message.to_s
    if not message_stringified.empty?
      message_stringified.each_codepoint.inject("") do |message_stringified, letter|
      message_stringified.concat(letter + key)
      end
    else
      return ("No message has been provided")
    end
  end
end
