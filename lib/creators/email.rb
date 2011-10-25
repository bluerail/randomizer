module RandomizerCreators
  class Email < RandomizerCreator
    # Returns a random mail address
    def self.random_email(options = {})
      name = "#{RandomizerSeeds::NAMES[rand(RandomizerSeeds::NAMES.length)]} #{RandomizerSeeds::SURNAMES[rand(RandomizerSeeds::SURNAMES.length)]}"
      name = name.downcase.gsub(/\s/,"_")
      "#{name}@example.com"
    end
    
    # Returns a random name <mailaddress>
    def self.random_email_with_name(options = {})
      name = "#{RandomizerSeeds::NAMES[rand(RandomizerSeeds::NAMES.length)]} #{RandomizerSeeds::SURNAMES[rand(RandomizerSeeds::SURNAMES.length)]}"
      "#{name} <#{name.downcase.gsub(/\s/,"_")}@example.com>"
    end
  end
end

Randomizer.instance.register_creator(RandomizerCreators::Email)