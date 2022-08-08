class Stack
    def initialize
      @secret_code = []
    end

    def push(el)
      @secret_code << el
    end

    def pop
      @secret_code.pop
    end

    def peek
        @secret_code.last
    end
  end