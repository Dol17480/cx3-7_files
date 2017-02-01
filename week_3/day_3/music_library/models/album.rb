require_relative('../db/sql_runner')


class Album

attr_reader :id, :name, :artist_id

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @artist_id = options['artist_id'].to_i
  end

  def save
    sql = "INSERT INTO albums (name, artist_id) VALUES ('#{@name}', #{@artist_id}) RETURNING *"
    album = SQLRunner.run( sql ).first
    @id = album['id']
  end

   def artist
   sql = " SELECT * FROM artists WHERE id = #{@artist_id}"
     artist = SQLRunner.run( sql ).first
     result =  Artist.new( artist )
    return result
   end

  end
