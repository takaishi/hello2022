#!/usr/bin/env ruby
require 'bundler/inline'

gemfile(true) do # holiday_jp should be up-to-date
 source 'https://rubygems.org'
 gem 'nokogiri', '1.11.3'
end

require 'nokogiri'
puts `uname -a`
puts Nokogiri::VERSION

html = <<~EOS
        <!doctype html>
        <html>
        <head>
        </head>
        <body>
        without charset
        </body></html>
EOS
parsed_html = Nokogiri::HTML.parse(html).to_xhtml
p "to_xhtml: #{parsed_html}"
parsed_html = Nokogiri::HTML.parse(html).to_html
p "to_html:  #{parsed_html}"
