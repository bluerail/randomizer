class RandomizerCreator
  def self.can_generate?(symbol)
    self.respond_to?("random_#{symbol}")
  end
end

# Load all creators
Dir[File.join(File.dirname(__FILE__),"creators","*.rb")].each do |file|
  require file
end
