require 'singleton'
require 'seed'

class Randomizer
  include Singleton

  def initialize
    @creators = []
  end

  # By default all methods are defined in the creator classes,
  # so all method_missing calls are redirected to one of them
  # 
  # If a creator class defines random_email, Randomizer.email
  # comes available
  def self.method_missing(symbol, *args)
    # *args is an array with potentially a Hash as first entry and we 
    # would like to pass that Hash...
    params = args.first || {}

    Randomizer.instance.send("random", symbol, params)
  end

  # Registers a creator class
  def register_creator(klass)
    @creators.push klass
  end
  
  # Generates a random symbol using args by using all of the
  # creator classes
  def random(symbol, args)
    @creators.select{ |creator| creator.can_generate?(symbol) }.each do |creator|
      return creator.send("random_#{symbol}", args)
    end
    
    nil
  end
end

require 'creator'
