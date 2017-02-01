require_relative('pet')

class PetShop

  def initialize (input_pets)
    @pets = input_pets
  end
  # this pet

  def pet_type (name)
        result = @pets.find do |pet|
          pet.name == name
        end
        return result.type
    end

    def get_name_of_all_pets_of_type(pet_type)
     pet_objects = @pets.select{|pet| pet.type == pet_type}
     pet_objects.map {|pet| pet.name}
    end

    def get_number_of_pets_costing_at_least(amount)
      pets_with_min_cost = @pets.select do |pet| 
        pet.price >= amount
      end
      return pets_with_min_cost.count
    end



end
