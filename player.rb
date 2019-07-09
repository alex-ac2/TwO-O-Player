
class Player
    attr_reader :name

    LIVES = 3

    def initialize(name)
        @name = name
        @lives = LIVES
        @score = 0
    end

    def remove_one_life
        @lives -= 1
    end

    def increase_score
        @score += 1
    end


end