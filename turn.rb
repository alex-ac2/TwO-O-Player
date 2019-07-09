require_relative 'question'

class Turn
    attr_reader :current_player, :round_number

    def initialize(current_player, round_number)
        @current_player = current_player
        @round_number = round_number
        @current_question = Question.new
        
    end

    def ask_question
    
        puts @current_question.text
        answer = gets.chomp.to_i

        if @current_question.correct?(answer)
            puts "#{current_player.name}: Yes you are CORRECT!"
        else
            @current_player.remove_one_life
            puts "#{current_player.name}: WRONG! Removed one life"
        end
    end

end

