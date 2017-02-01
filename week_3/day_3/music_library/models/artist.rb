require_relative( '../db/sql_runner' )

class Artist

  attr_reader :id, :name

def initialize(options)
  @id = options['id'].to_i
  @name = options['name']
end

def save
  sql = "INSERT INTO artists (name) VALUES ('#{@name}') RETURNING *"
  artist = SQLRunner.run( sql ).first
  @id = artist['id']
end

def albums
sql = "SELECT * FROM albums WHERE artist_id = #{@id}"
  albums = SQLRunner.run( sql )
  result =  albums.map {|album| Album.new(album) }
 return result
end



  end

