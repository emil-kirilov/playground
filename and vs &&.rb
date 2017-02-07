foo = :foo
bar = nil

a = foo and bar
# => nil
a
# => :foo

a = foo && bar
# => nil
a
# => nil

a = (foo and bar)
# => nil
a
# => nil

(a = foo) && bar
# => nil
a
# => :foo

!true && false
#=> false

not true && false
#=> true