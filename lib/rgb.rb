def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex,n|
    hex += n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  r, g, b = hex.scan(/\w\w/)
  [r, g, b].map do |s|
    s.hex
  end
end
# '#12abcd'.scan(/\w/)       #=> ["1", "2", "a", "b", "c", "d"]
# '#12abcd'.scan(/\w\w/)     #=> ["12", "ab", "cd"]
# '#12abcd'.scan(/\w\w\w/)   #=> ["12a", "bcd"]
# '#12abcd'.scan(/\w\w\w\w/) #=> ["12ab"]
