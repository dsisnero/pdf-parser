# -*- ruby -*-

require "rubygems"
require "hoe"
require 'hoe/kpeg'
require 'rake/clean'

CLEAN.include "#*.*#"

Hoe.plugin :bundler
# Hoe.plugin :compiler
# Hoe.plugin :debugging
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :gemspec
# Hoe.plugin :git
# Hoe.plugin :inline
#Hoe.plugin :kpeg
# Hoe.plugin :minitest
# Hoe.plugin :racc
# Hoe.plugin :rcov
# Hoe.plugin :rdoc
# Hoe.plugin :rubyforge

Hoe.spec "pdf-parser" do
  developer('dominic sisneros', 'dsisnero@gmail.com')
  dependency('guard', '>= 0', :dev)
  dependency('guard-rspec' , '>= 0', :dev)
  dependency('rspec', '>= 0', :dev)
  dependency('kpeg','>= 0', :dev)
  # dependency('wdm', '>= 0' , :dev)
  self.extra_dev_deps << ['guard', '>= 0']

  # developer("FIX", "FIX@example.com")

  # self.group_name = "pdf-parser" # if part of an organization/group

   license "MIT" # this should match the license in the README
end

# # vim: syntax=ruby
#  desc "Rebuild the parsers"
#  task "parser" do
#    sh "kpeg  -o lib/pdf/raw_parser.rb -s -f -n Pdf::Parser lib/pdf/pdf.kpeg"
#  end


#task :test => :parser
