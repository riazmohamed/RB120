class Shelter
  def adopt(owner_object, pet_object)
    # logic to capture the owner and the pet state
    # need to deciper the owners name and the pets name

    =begin
      given Owner object with state'name'
      given Pet object with state'name' and 'type'

      # create a local variable equal to the owners name
      # set the owners name to an array containing elements as hash
        - for each hash the type_of_pet is key and the pet_name is value
    =end
  end

  def print_adoptions
    # go through the collection of matching owner and the list of pets he/she owns in the following format for each owner

    # owner_name has adopted the following pets:
    # a type_of_pet named pet_name
    # a type_of_pet named pet_name
    # a type_of_pet named pet_name
    #
    # like the following output
    # B Holmes has adopted the following pets:
    # a dog named Molly
    # a parakeet named Sweetie Pie
    # a dog named Kennedy
    # a fish named Chester
  end
end

class Pet
  attr_reader :type, :name

  def initialize(type_of_pet, name)
    @type = type_of_pet
    @name = name
  end
end

class Owner
  attr_reader :name
  # attr_writer :number_of_pets

  def initialize(name)
    @name = name
    @pet_count = 0
  end

  # everytime a new pet is added to the Shelter object trigger this
  def increment
    @pet_count += 1
  end

  def number_of_pets
    @pet_count
  end
end

# butterscotch = Pet.new('cat', 'Butterscotch')
# pudding      = Pet.new('cat', 'Pudding')
# darwin       = Pet.new('bearded dragon', 'Darwin')
# kennedy      = Pet.new('dog', 'Kennedy')
# sweetie      = Pet.new('parakeet', 'Sweetie Pie')
# molly        = Pet.new('dog', 'Molly')
# chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

# shelter = Shelter.new
# shelter.adopt(phanson, butterscotch)
# shelter.adopt(phanson, pudding)
# shelter.adopt(phanson, darwin)
# shelter.adopt(bholmes, kennedy)
# shelter.adopt(bholmes, sweetie)
# shelter.adopt(bholmes, molly)
# shelter.adopt(bholmes, chester)
# shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

=begin
the following is the required output
=====================
P Hanson has adopted the following pets:
a cat named Butterscotch
a cat named Pudding
a bearded dragon named Darwin

B Holmes has adopted the following pets:
a dog named Molly
a parakeet named Sweetie Pie
a dog named Kennedy
a fish named Chester

P Hanson has 3 adopted pets.
B Holmes has 4 adopted pets.
=====================
=end
