require_relative 'player'
require_relative 'turn_manager'
require_relative 'turn'

class Game
    attr_writer :status 

    def initialize
        @p1 = Player.new('Player 1')
        @p2 = Player.new('Player 2')
        @players = [@p1, @p2]
        @turn_manager = Turn_Manager.new(@players)
        @game_status = true
    end

    def play

        while (@game_status)

            turn = @turn_manager.next_turn
            pad "Round #{turn}"

            #@players.each { |player| puts player.name}

            current_player = @turn_manager.get_current_player
            
            puts "Current Player: #{current_player.name}"

            turn1 = Turn.new(current_player, turn)
            turn1.ask_question
            
            full_summary
            
            check_active
            
        end

        game_over

    end


    def full_summary
        puts "#{@p1.summary} vs #{@p2.summary}"
    end

    private

    def pad(message)
        puts
        puts "=== #{message} ==="
        puts
    end

    def check_active
        @players.each_with_index { |player,index| 
            if player.lives == 0
                puts
                puts "No more lives #{player.name}"
                @players.delete_at(index)
                @game_status = false
            end
        }
    end

    def active_players

    end

    def game_over
        puts "#{@players[0].name} wins with a score of #{@players[0].name}/3"
        pad "GAME OVER"
    end


end
