class Address
  attr_accessor :address, :person

  def add_person(person)
    person.address = self
  end

end