
class Player
    attr_reader :name, :score, :lives

    STARTING_LIVES = 3

    def initialize(name)
        @name = name
        @lives = STARTING_LIVES
        @score = 0
    end

    def remove_one_life
        @lives -= 1
    end

    def increase_score
        @score += 1
    end

    def summary 
        "#{@name}: #{@lives}/3"
    end

end