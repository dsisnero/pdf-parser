require 'rubygems'
require 'bundler/setup'


#libdir = "#{File.dirname(__FILE__)}/../lib"

#$LOAD_PATH.unshift(libdir) unless $LOAD_PATH.include?(libdir)

require_relative  '../lib/pdf_parser'

require 'minitest/autorun'
#require 'debugger'

module MiniTest

  class Test
    include Pdf::NodeHelper
  end

end
module MiniTest
  module Assertions

    include Pdf::NodeHelper

    def parse (rule, input, sexp)
      parser = Pdf::Parser.new(input)
      # Is the string at least partially acceptable?
      assert parser.parse(rule.to_s), "Could not apply #{rule.inspect} to `#{input}'. Expected #{parser.failure_info}"
      assert_equal input.length, parser.pos, "The rule #{rule.inspect} could not consume all of `#{input}`. Got `#{parser.result.inspect}`"
      assert_equal sexp, parser.result
    end
    def no_parse(rule, input)
      parser = Pdf::Parser.new(input)
      assert_equal parser.pos, 0, "Should not parse `#{input}` with #{rule.inspect}. Parser returned `#{parser.result.inspect}`"
    end
  end
end
