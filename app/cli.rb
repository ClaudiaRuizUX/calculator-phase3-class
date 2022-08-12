class CLI 
    def initialize
        continue = 'y'
        puts "Welcome to my CLI application"
        
        while continue == 'y'
        puts "what would you like to do?"
        puts "1. Calculator"
        puts "2. User"
        
        input = gets.strip

        if input == '1'
            startCalculator
        else 
            getUsers
        end

        puts "Do you want to continue(y/N)?"
        continue = gets.strip
        end
    end

    def startCalculator
        puts "Input first number"
        inputOne = gets.strip
        puts "Input second number"
        inputTwo = gets.strip
        puts "Input an operator (+,-,*,/)"
        operator = gets.strip

        result = Calculator.new.calculate(inputOne, inputTwo, operator)

        puts result
    end

    def getUsers
        puts "what information do you like to know?"
        puts "1. Users count"
        puts "2. Search User by name"
        input = gets.strip
        
        if input == "1"
            puts User.count
        elsif input == "2"
            puts "Type a name"
            value = gets.strip
            puts User.find_by(name: value)
        end
    end
end