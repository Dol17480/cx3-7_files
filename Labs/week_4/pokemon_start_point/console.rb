require_relative( 'models/pokemon' )
require_relative( 'models/trainer' )
require_relative( 'models/owned_pokemon' )
require( 'pry-byebug' )

OwnedPokemon.delete_all()
Trainer.delete_all()
Pokemon.delete_all()

trainer1 = Trainer.new({ 'name' => 'Craig' })
trainer1.save()
trainer2 = Trainer.new({ 'name' => 'Zsolt' })
trainer2.save() 
trainer3 = Trainer.new({ 'name' => 'Tony' })
trainer3.save() 

pokemon1 = Pokemon.new({ 'name' => 'Charmander'})
pokemon1.save()
pokemon2 = Pokemon.new({ 'name' => 'Bulbasaur' })
pokemon2.save()
pokemon3 = Pokemon.new({ 'name' => 'Squirtle' })
pokemon3.save()
pokemon4 = Pokemon.new({ 'name' => 'Pikachu' })
pokemon4.save()
pokemon5 = Pokemon.new({ 'name' => 'Snorlax' })
pokemon5.save()


owned_pokemon1 = OwnedPokemon.new({ 'trainer_id' => trainer1.id , 'pokemon_id' => pokemon1.id })
owned_pokemon1.save
owned_pokemon2 = OwnedPokemon.new({ 'trainer_id' => trainer1.id , 'pokemon_id' => pokemon4.id })
owned_pokemon2.save
owned_pokemon3 = OwnedPokemon.new({ 'trainer_id' => trainer2.id , 'pokemon_id' => pokemon2.id })
owned_pokemon3.save
owned_pokemon4 = OwnedPokemon.new({ 'trainer_id' => trainer2.id , 'pokemon_id' => pokemon5.id })
owned_pokemon4.save
owned_pokemon5 = OwnedPokemon.new({ 'trainer_id' => trainer3.id , 'pokemon_id' => pokemon1.id })
owned_pokemon5.save
owned_pokemon6 = OwnedPokemon.new({ 'trainer_id' => trainer3.id , 'pokemon_id' => pokemon2.id })
owned_pokemon6.save
owned_pokemon7 = OwnedPokemon.new({ 'trainer_id' => trainer3.id , 'pokemon_id' => pokemon3.id })
owned_pokemon7.save





binding.pry
nil
