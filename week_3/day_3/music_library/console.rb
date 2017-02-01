require_relative('./models/album')
require_relative('./models/artist')

require( 'pry-byebug' )

oasis = Artist.new( {'name' => "Oasis" } )
oasis.save()

album1 = Album.new( {'name' => "Definitely Maybe", 'artist_id' => oasis.id })
album1.save()

binding.pry
nil
