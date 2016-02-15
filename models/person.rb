class Person
 attr_accessor :name, :phone, :address

  @@all = []
    def initialize(name)
      @name = name
      @@all << self
    end

  def self.all
    @@all
  end

  def self.find(person_name)
    self.all.find do |person|
      person.name == person_name
    end
  end

  def self.clear
    self.all.clear
  end

end