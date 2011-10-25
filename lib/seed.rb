# Load all seeds files
Dir[File.join(File.dirname(__FILE__),"seeds","*.rb")].each do |file|
  require file
end
# 
# class RandomizerSeed
#   # Include all seed modules
#   Dir[File.join(File.dirname(__FILE__),"seeds","*.rb")].each do |file|
#     include eval("RandomizerSeeds::#{File.basename(file).gsub(/\.rb$/,"").capitalize}")
#   end
# end
# 
