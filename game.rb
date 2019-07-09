require_relative 'player'
require_relative 'turn_manager'

class Game
    attr_writer :status

    def initialize
        p1 = Player.new('p1')
        p2 = Player.new('p2')
        @players = [p1, p2]
        @status = true

    end

    def play

        while (@status == true)
            @players.each { |player| puts player }






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
