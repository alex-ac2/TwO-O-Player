require_relative 'turn'

class Turn_Manager 

    def initialize(players)
        @players = players.dup.shuffle
        @current_turn = 1
    end

    def next_turn
        current_player = get_current_player

        @current_turn
    end

    
    def increment_turn
        current_turn = @current_turn
        @current_turn += 1
        current_turn
    end 

    def get_current_player
        @players.first
    end


end