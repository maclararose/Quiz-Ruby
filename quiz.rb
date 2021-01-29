question1 = "What color are apples?\n(a)Red\n(b)Blue\n(c)White"
question2 = "What color are bananas?\n(a)Red\n(b)Green\n(c)Yellow"
question3 = "What color are oranges?\n(a)Pink\n(b)Orange\n(c)Black"

class Question
    attr_accessor :prompt, :answer

    def initialize(prompt, answer)
        @prompt = prompt
        @answer = answer
    end

end

questions = [
    Question.new(question1, "a"),
    Question.new(question2, "c"),
    Question.new(question3, "b"),
]

def run_test(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got #{score}/" + questions.length().to_s)
end

run_test(questions)