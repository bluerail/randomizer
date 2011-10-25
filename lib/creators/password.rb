require 'rubygems'
require 'active_support/secure_random'

module RandomizerCreators
  class Password < RandomizerCreator
    # Returns a random password using:
    #
    # options[:length] => default 6
    #
    def self.random_password(options = {})
      length = options[:length] || 6
      
      # SecureRandom returns a string with twice the length we provide so
      # we need to extract the part we want
      ActiveSupport::SecureRandom.hex((length + 1) / 2)[0,length]
    end
  end
end

Randomizer.instance.register_creator(RandomizerCreators::Password)