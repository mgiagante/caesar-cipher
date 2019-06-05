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
end