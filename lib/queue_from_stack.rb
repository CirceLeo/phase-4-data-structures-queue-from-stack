require_relative './stack'

# your code here

class MyQueue

    def initialize 
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add value
        until @s1.empty? do
            @s2.push(@s1.pop)
        end

        @s1.push(value)

        until @s2.empty? do
            temp = @s2.pop
            @s1.push(temp)
        end
    end

    def remove
        @s1.pop
    end

    def peek
        @s1.peek
    end


end