Gem::Specification.new do |s|
  s.name        = "factory_randomizer"
  s.version     = "0.1.0"
  s.date        = "2011-10-25"
  s.summary     = "Randomizer, a tool for generating random stuff..."
  s.description = "Randomizer, a tool for generating random stuff..."
  s.authors     = ["Rene van Lieshout"]
  s.email       = "rene@bluerail.nl"
  s.files       = [
    "lib/creator.rb",
    "lib/creators/email.rb",
    "lib/creators/name.rb",
    "lib/creators/number.rb",
    "lib/creators/password.rb",
    "lib/factory_randomizer.rb",
    "lib/seed.rb",
    "lib/seeds/name.rb"
  ]
  s.homepage    = "https://github.com/bluerail/randomizer"
end