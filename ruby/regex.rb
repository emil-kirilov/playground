"astrign".sub(/str/, "***")
#=> "a***ign"
"astr".sub(/a/, "*")
#=> "*striasfsdgdgn"
"astr".gsub(/a/, "*")
#=> "*stri*sfsdgdgn"
"astr".sub(/aaa/, "*")
#=> "astr"
"astriasfsdgdgn".sub!(/aaa/, "*")
#=> nil
%r{mm/dd}
#=> /mm\/dd/
/mm\/dd/
#=> /mm\/dd/
Regexp.new("mm/dd")
#=> /mm\/dd/
"Catcat" =~ /cat/i
#=> 0
"Catcat" =~ /cat/
#=> 3
match = pattern.match("cheeze stuff")
#=> #<MatchData "eze">
match.pre_match
#=> "che"
match[0]
#=> "eze"
match.post_match
#=> " stuff"
a = "pokemon"
a.sub(/p|k|e|n/) { |c| c.upcase }
#=> "Pokemon"
a.gsub(/p|k|e|n/) { |c| c.upcase }
#=> "PoKEmoN"
"aSDasfddsfADS".downcase
#=> "asdasfddsfads"
mdata = "cat dog money".match(/\b\w/)
#=> #<MatchData "c">
mdata.pre_match
#=> ""
mdata.post_match
#=> "at dog money"
mdata[0]
#=> "c"
"cat dog money".gsub(/\b\w/) {|first| first.upcase}
#=> "Cat Dog Money"
"cat dog money".gsub(/\b\w/, &:upcase)
#=> "Cat Dog Money"
hash = { "dog" => "canine", "cat" => "feline" }
#=> {"dog"=>"canine", "cat"=>"feline"}
hash.default = "unknown"
#=> "unknown"
"cat and dog".gsub(/\w+/, hash)
#=> "cat and dog"
