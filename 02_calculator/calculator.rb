def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(arr)
    tot = 0
    arr.each {|num| tot += num}
    tot
end

def multiply(a, b)
    a*b
end

def power(base, exponent)
    base**exponent
end

def factorial(n)
    fact = 1
    if n > 1
        for i in 1..n
            fact *= i
        end
    end
    fact
end
