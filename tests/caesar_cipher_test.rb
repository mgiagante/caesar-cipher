require 'minitest/autorun'
require 'caesar_cipher'

class CaesarTest < Minitest::Test
  def test_encoding
    encoded = CaesarCipher::Cipher.new(3).encode("Some message")
    assert_equal "Vrph#phvvdjh", encoded
  end

  def test_decoding
    decoded = CaesarCipher::Cipher.new(3).decode("Vrph#phvvdjh")
    assert_equal "Some message", decoded
  end

  def test_encode_will_return_nil_if_empty_string_is_provided
    encoded = CaesarCipher::Cipher.new(3).encode("")
    assert_nil encoded
  end

  def test_decode_will_return_nil_if_empty_string_is_provided
    decoded = CaesarCipher::Cipher.new(3).decode("")
    assert_nil decoded
  end

  def test_encode_will_raise_exception_if_invalid_param_is_provided
    assert_raises ArgumentError do
      CaesarCipher::Cipher.new(3).encode(7)
    end
  end

  def test_decode_will_raise_exception_if_invalid_param_is_provided
    assert_raises ArgumentError do
      CaesarCipher::Cipher.new(3).decode(7)
    end
  end
end
