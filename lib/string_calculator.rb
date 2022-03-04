class StringCalculator
  class << self
    def add(input)
      if input.empty?
        0
      else
        input.to_i
      end
    end
  end
end
