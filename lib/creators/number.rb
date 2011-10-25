module RandomizerCreators
  class Number < RandomizerCreator
    # Returns a random number between:
    #
    # options[:min] => default 0
    # options[:max] => default max Fixnum size
    #
    def self.random_number(options = {})
      max_int_size = 2 ** (([42].pack('i').size * 8) - 2) - 1
      
      min = options[:min] || 0
      max = (options[:max] || max_int_size) - min
      
      min + rand(max)
    end
  end
end

Randomizer.instance.register_creator(RandomizerCreators::Number)