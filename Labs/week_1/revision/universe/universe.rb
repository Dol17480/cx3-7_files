require('pry-byebug')

def add_galaxy(universe, galaxy)
  universe[:galaxies].push(galaxy)

end

def get_spaceships(universe)
  spaceships = []

  for spaceship in universe[:spaceships]
    binding.pry
    spaceships << spaceship

  end

  return spaceships

end