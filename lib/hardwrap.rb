# bring in activesupport
require 'active_support/all'

width = 65
delimiter = ' '

# supported prefixes
prefixes = []
prefixes << Regexp.new('^#[ ]') # Ruby comment
prefixes << /^>+[ ]/ # Quoted email thread
prefixes << Regexp.new('^//[ ]') # Doubleslash comment
prefixes << Regexp.new('^[ ]\*[ ]') # Multiline slashstar comment

lines = []
last_char = nil
while STDIN.gets
  lin = $_
  last_char = lin[lin.length - 1]
  lines << lin.chomp
end

def every_line_matches_prefix lines, prefix
  lines.length == lines.select{|n| !prefix.match(n).nil?}.length
end

# parse input, removing prefix
matching_prefixes = prefixes.select {|p| every_line_matches_prefix(lines, p) }
unless matching_prefixes.empty?
  prefix = matching_prefixes[0]
  prefix_str = prefix.match(lines[0])[0]
  lines = lines.map{|lin| lin.gsub(prefix, '')}
end
body = lines.join(' ').gsub(/\s+/, ' ')

# smart truncate and restoring prefix
wrapped_lines = []
while body.length > 0
  lin = body.truncate width, separator: delimiter, omission: ''
  wrapped_lines << (prefix_str + lin.strip)
  body.slice!(0, lin.length)
end

# output with print instead of puts in order to control newlines
print wrapped_lines.join("\n")
print("\n") if last_char == "\n"
