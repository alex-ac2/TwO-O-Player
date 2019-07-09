require_relative 'question'

class Turn
    attr_reader :current_player, :round_number

    def initialize(current_player, round_number)
        @current_player = current_player
        @round_number = round_number
    end

    def ask_question
        round_number = @round_number
        current_player = @current_player

        Question.new(
            round_number,
            current_player
        )
    end

end

