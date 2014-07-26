require "minitest/unit"
require_relative "test_helper"

class HeaderTest < MiniTest::Test
  def test_headers
    parse :header, "%PDF-1.3", s(:header, 1.3)
    parse :header, "%PDF-2.0", s(:header,2.0)
    parse :header, "%PDF-2.0", s(:header,2.0)
    parse :header, "%PDF-8.0", s(:header,8.0)
  end


  def test_bad_headers
    no_parse :header, "no"
    no_parse :header, "0xG"
    no_parse :header, "FF"
    no_parse :header, "9.+e1"
  end
end
