class PeopleController


  def new
    view = PeopleNewView.new
    view.render
  end

  def create(person_name)
    person = Person.new(person_name)
    puts "you have created #{person.name}"
  end

  def show(name)
    found_person = Person.find(name)
    puts "We have found #{found_person.name.capitalize}"
  end
end