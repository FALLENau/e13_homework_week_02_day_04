require_relative('pet')

class PetShop

  def initialize(input_pets)
    @pets = input_pets

  end

  def pet_type(pet_name)
    pet_found = @pets.find {|pet| pet.name == pet_name}
    return pet_found.type
  end #note: .find will search a class for 1 object



  def get_names_of_all_pets_of_type(type)
    pets_found_by_breed = @pets.find_all {|pet| pet.type == type}
    pet_names = pets_found_by_breed.map {|pet| pet.name}
    return pet_names
  end #note: .map will search a class for an array of all objects

  def get_number_of_pets_costing_at_least(amount)
    pets_found = @pets.find_all {|pet| pet.price >= amount}
    return pets_found.count
  end #note: .find_all will search a class for specifed conditions

end
