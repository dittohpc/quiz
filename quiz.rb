class Quiz
  attr_accessor :questions

  def initialize(attr)
    @question = attr[:questions]
    @correct_answer = 0
  end

  def runQuiz
    @questions.each do |prompt|
      prompt.question
      prompt.answer

      guess = gets.chomp

      if prompt.correct?(guess)
        p "yay"
        @correct_answer += 1
      else
        p "whoops"
      end
    end
  end
end

class Prompt
  attr_accessor :question :answer

  # def initialize(question, answer)
  #   @question = question
  #   @correct_answer = answer
  # end
  def initialize(attr)
    @question = attr(question)
    @correct_answer = attr(answer)
  end

  def correct?(guess)
    return guess == @correct_answer
  end
end

prompts = (Prompt.new('q1', 'a1')) #, Prompt.new('q2', 'a2'), Prompt.new('q3','a3'))

p prompts

q = Quiz.new(questions: prompts)
# q = Quiz.new({questions: prompts})

p q.questions



# def quiz_creation
#      quiz_num = gets.chomp.to_i
#      questions = []
#      answers = []
#      if quiz_num <= 0
#          puts " "
#          puts "Really? Zero questions for the quiz...Boring"
#          puts " "
#          puts "Well, come back soon!!!"
#          puts " "
#      else
#          quiz_num.times do |num|
#              print "What is question #{num + 1}?                      "
#              questions.push(gets.chomp)
#              print "What is the answer to question # #{num + 1}?      "
#              answers.push(gets.chomp.downcase)
#          end
#          runquiz(quiz_num, questions, answers)
#      end
#   end
#
#   def runquiz(num, questions, answers)
#     correct = 0
#     system "clear"
#     num.times do |x|
#       print "Question #{x + 1}: #{questions[x]} "
#       response = gets.chomp.downcase
#       response == answers[x] ? correct +=  1 : next
#       puts "---------------------------------------"
#     end
#     puts "You answered #{correct} out of #{num} correctly"
#     puts " "
#   end
#
#   system "clear"
#   puts " "
#   puts "Hi, welcome to Quiz Maker. Lets make a quiz"
#   puts " "
#   print "How many questions would you like on it? "
#
#   quiz_creation
