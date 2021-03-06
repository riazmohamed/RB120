class Shelter
  attr_reader :owner_collection

  def initialize
    @owner_collection = {}
  end

  def pet_collection(pets_name, pets_type)
    collection = {}

    if collection.has_key?(pets_type)
      collection[pets_type] << pets_name
    else
      collection[pets_type] = [pets_name]
    end

    collection
  end

  def has_the_pet?(pets_type, owners_name)
    owner_collection[owners_name].select { |element| element[pets_type] } != []
  end

  def adopt(owner_object, pet_object)
    owner_object.increment
    owners_name = owner_object.name
    pets_name = pet_object.name
    pets_type = pet_object.type

    collection = pet_collection(pets_name, pets_type)

    if owner_collection.has_key?(owners_name)

      if has_the_pet?(pets_type, owners_name)
        owner_collection.each do |owners, his_pets|
          his_pets.each do |type, name|
            type[pets_type] << pets_name if owners == owners_name && type.has_key?(pets_type)
          end
        end
      else
        owner_collection[owners_name] << collection
      end

    else
      owner_collection[owners_name] = [collection]
    end
  end

  def print_adoptions
    owner_collection.each do |owner, pet_group|
      puts "#{owner} has adopted the following pets:"
      pet_group.each do |group|
        group.each do |type, names|
          names.each { |name| puts "a #{type} named #{name}" }
        end
      end
      puts ""
    end
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

  def initialize(name)
    @name = name
    @pet_count = 0
  end

  # everytime a new pet is added to the Shelter object trigger this increment
  def increment
    @pet_count += 1
  end

  def number_of_pets
    @pet_count
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."
