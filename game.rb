require_relative 'player'
require_relative 'turn_manager'
require_relative 'question'

class Game
    attr_writer :status

    def initialize
        p1 = Player.new('Player 1')
        p2 = Player.new('Player 2')
        @players = [p1, p2]
        @status = true
        @turn_manager = Turn_Manager.new(@players)
    end

    def play

        while (@status == true)

            turn = @turn_manager.next_turn
            pad "Round #{turn}"

            puts @players

            q1 = Question.new(turn, 'ted')
            
            q1.generate_question
            puts q1.get_answer


            
            @status = false
        end
    end

    private

    def pad(message)
        puts
        puts "=== #{message} ==="
        puts
    end

    def full_summary
        
    end

    def game_over? 
        
    end


end
