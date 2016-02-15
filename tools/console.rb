require_relative '../config/environment.rb'


action = 0

while action != 'exit'
  puts 'what is the action you would like to take'
  action = gets.chomp

  case action
  when 'create'
    controller = PeopleController.new
    person_name = controller.new
    controller = PeopleController.new
    controller.create(person_name)
    
  when 'show'
    puts "what is the name of the person you'd like to find"
    name = gets.chomp    
    controller = PeopleController.new
    controller.show(name)
  when 'index'
    Person.all.each do |person|
      puts "Name: #{person.name}"
    end
  end
end
Pry.start
