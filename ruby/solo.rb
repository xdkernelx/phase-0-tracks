#Nestor Alvarez
#DBC, Bobolinks
#Week 5 Assessment
#rpn_calculator - copied from previous work in Cloud 9 environment
# Original: https://ide.c9.io/krnl_x/academy_homework

class RPNCalculator
   attr_accessor :rpn_arr, :value
    
   def initialize
      @rpn_arr = Array.new   
   end
    
    def push(val)
         @rpn_arr.push(val)
    end
    
    def plus
       if @rpn_arr.size < 2
          raise "calculator is empty"
       end
       @value = @rpn_arr[@rpn_arr.size-2] + @rpn_arr[@rpn_arr.size-1]
       @rpn_arr.pop(2)
       @rpn_arr.push(@value)
       return @value
    end
    
    def minus
       if @rpn_arr.size < 2
         raise "calculator is empty"
       end
       @value = @rpn_arr[@rpn_arr.size-2] - @rpn_arr[@rpn_arr.size-1]
       @rpn_arr.pop(2)
       @rpn_arr.push(@value)
       return @value
    end
    
    def divide
       if @rpn_arr.size < 2
         raise "calculator is empty"
       end
       @value = @rpn_arr[@rpn_arr.size-2].to_f / @rpn_arr[@rpn_arr.size-1].to_i
       @rpn_arr.pop(2)
       @rpn_arr.push(@value)
       return @value
    end
    
    def times
       if @rpn_arr.size < 2
         raise "calculator is empty"
       end
       @value = @rpn_arr[@rpn_arr.size-2].to_f * @rpn_arr[@rpn_arr.size-1].to_f
       @rpn_arr.pop(2)
       @rpn_arr.push(@value)
       return @value
    end
    
    def tokens(str)
       expression = str.split(/\s/)
       for i in 0...expression.size 
            if (expression[i].match(/[-+*\/]/))
                expression[i] = expression[i].to_sym
            else
                expression[i] = expression[i].to_i
            end
       end
       return expression
    end
    
    def evaluate(str)
       expression = str.split(/\s/)
         for i in 0...expression.size 
            if !(expression[i].match(/[-+*\/]/))
                @value = @rpn_arr.push(expression[i].to_i)
            elsif expression[i] == "+"
               plus
            elsif expression[i] == "-"
               minus
            elsif expression[i] == "*"
               times
            elsif expression[i] == "/"
               divide
            end
         end
       return @value
    end
    
end