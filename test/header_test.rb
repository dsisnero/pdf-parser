require "minitest/unit"
require "test/helper_methods"

class HeaderTest < MiniTest::Unit::TestCase
  def test_headers
    parse :pdfheader, "%PDF-1.3", Pdf::Parser::AST::Header.new(1.3)
    parse :pdfheader, "%PDF-2.0", Pdf::Parser::AST::Header.new(2.0)
    parse :pdfheader, "%PDF-2.0", Pdf::Parser::AST::Header.new(2.0)
  end

  def test_bad_pdfheaders
    no_parse :pdfheader, "no"
    no_parse :pdfheader, "0xG"
    no_parse :pdfheader, "FF"
    no_parse :pdfheader, "9.+e1"
  end
end
