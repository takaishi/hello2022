#!/usr/bin/env ruby
require 'nokogiri'

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
p parsed_html = Nokogiri::HTML.parse(html).to_xhtml

if parsed_html.include?("charset=UTF-8")
  exit 0
else
  exit 1
end

# p parsed_html = Nokogiri::HTML.parse(html).to_html
