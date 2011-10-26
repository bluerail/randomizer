module RandomizerCreators
  class Password < RandomizerCreator
    # Returns a random password using:
    #
    # options[:length] => default 6
    #
    def self.random_password(options = {})
      length = options[:length] || 6
      
      chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).collect{ |int| int.to_s }
      (0...length).collect { chars[rand(chars.length)] }.join
    end
  end
end

Randomizer.instance.register_creator(RandomizerCreators::Password)