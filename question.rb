
class Question

    operators = ['+']
    range = [1..20]

    def initialize(round, player)
        @a = sample_number
        @b = sample_number
        @answer = get_answer
    end

    def get_answer
        @a + @b
    end

    def sample_number
        array = (1..20).to_a
        #[1..20].each { |n| array.push(n) }

        array.sample
    end

    def generate_question
        puts "What does #{@a} plus #{@b} equal?"
    end


end