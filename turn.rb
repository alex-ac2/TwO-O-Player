class Turn
    attr_reader :current_player, :round_number

    def initialize(current_player, round_number)
        @current_player = current_player
        @round_number = round_number
    end
end

