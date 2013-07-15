class Calculator
  def ask()
    puts("Please Enter your wordy Math statement")
     question = gets
    input = question.split(" ")
    count = 0
    input.each do |elements|
        if elements == "divide" || elements == "/"
          input[count+1] = (input[count-1].to_i / input[count+1].to_i).to_s 
        elsif elements == "multiply" || elements == "*"
          input[count+1] = (input[count-1].to_i * input[count+1].to_i).to_s
        end 
      count +=1
    end
    count =0
    input.each do |elements|
        if elements == "plus" || elements == "+"
          input[count+1] = (input[count-1].to_i + input[count+1].to_i).to_s 
        elsif elements == "minus" || elements == "-"
          input[count+1] = (input[count-1].to_i - input[count+1].to_i).to_s
        end 
      count +=1
    end
    puts input[count-1]
  end
end

tyler = Calculator.new.ask