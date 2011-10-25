module RandomizerCreators
  class Name < RandomizerCreator
    # Returns a random name
    def self.random_first_name(options = {})
      RandomizerSeeds::NAMES[rand(RandomizerSeeds::NAMES.length)]
    end

    # Returns a random surname
    def self.random_surname(options = {})
      RandomizerSeeds::SURNAMES[rand(RandomizerSeeds::SURNAMES.length)]
    end

    # Returns a random surname
    def self.random_full_name(options = {})
      "#{RandomizerSeeds::NAMES[rand(RandomizerSeeds::NAMES.length)]} #{RandomizerSeeds::SURNAMES[rand(RandomizerSeeds::SURNAMES.length)]}"
    end
  end
end

Randomizer.instance.register_creator(RandomizerCreators::Name)