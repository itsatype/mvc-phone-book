class Phone
  attr_accessor :phone, :person

  def add_person(person)
    person.phone = self
  end
end