1 == 1.0    #true - same value
1.eql?(1.0) #false - different types

class Test
end

a = Test.new
b = Test.new
c = a

p a.equal? b  #false
p a.equal? c  #true, same object