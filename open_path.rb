#!/usr/bin/env ruby
#
require 'clipboard'

def convert_path
  raise ArgumentError, "Provided [#{ARGV.length}] arguments, expected 0 or 1" unless ARGV.length < 2

  path = ARGV[0] ? ARGV[0] : Clipboard.paste
  path = path.strip.gsub('\\', '/')

  # Double quotes will treat the double backslashes as a single slash
  path = "/#{path}" unless path.start_with?('//')

  "smb:#{path}"
end
system("open '#{convert_path}'")
