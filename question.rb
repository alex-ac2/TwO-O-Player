
class Question

    def initialize
        @a = sample_number
        @b = sample_number
    end

    def text
        "What does #{@a} plus #{@b} equal?"     
    end

    def correct?(num) 
        num == correct_answer
    end

    private

    def correct_answer
        @a + @b
    end

    def sample_number
       (1..20).to_a.sample
    end

end