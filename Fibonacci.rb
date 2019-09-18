    def recursive_fib(n)
        if n<=1 
            return n
        else 
            return (recursive_fib(n-1) + recursive_fib(n-2))
        end 
    end 

    def iterative_fib(n)
        if n<=1
            return n
        else
            tab = Array.new (n+1)
            tab[0]=0
            tab[1]=1
                for i in 2..n
                tab[i]= tab[i-2] + tab[i-1]
                end 
             return tab[n]
        end
    end
require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
