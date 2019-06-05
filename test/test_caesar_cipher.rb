require 'minitest/autorun'
require 'caesar_cipher'

class CaesarTest < Minitest::Test
  def test_encoding
    encoded = CaesarCipher.new(3).encode("Some message")
    assert_equal "Vrph#phvvdjh",
    encoded
  end

  def test_decoding
    decoded = CaesarCipher.new(3).decode("Vrph#phvvdjh")
    assert_equal "Some message",
    decoded
  end

  def test_encode_will_not_crash_if_no_string_provided
    encoded = CaesarCipher.new(3).encode("")
    assert_equal "No message has been provided",
    encoded
  end

  def test_encode_will_not_crash_if_not_string_provided
    encoded = CaesarCipher.new(3).encode(7)
    assert_equal ":",
    encoded
  end
end