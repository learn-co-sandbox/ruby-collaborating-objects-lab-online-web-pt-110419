class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    song
  end
  
  def self.all 
    @@all << song
    @songs
  end 
end


# class Song
#   attr_accessor :artist, :name

#   def initialize(name)
#     @name = name
#   end

#   def artist_name=(name)
#     self.artist = Artist.find_or_create_by_name(name)
#     @artist = song_artist
#       #@artist.add_song(self)
#     artist.add_song(self)
#   end

#   def self.new_by_filename(file)
#     song_info = file.chomp(".mp3").split(" - ")
#     song = Song.new(song_info[1])
#     song.artist_name = song_info[0]
#     song
#   end
# end

# class Song
#   attr_accessor :name, :artist

#   def initialize(name)
#     @name = name
#   end

#   def self.new_by_filename(filename)
#     artist_name, song_name, extra = filename.split(" - ")
#     song = self.new(song_name)
#     artist = Artist.find_or_create_by_name(artist_name)
#     artist.add_song(song)
#   end
  
#   def self.all 
#     @@all
#   end 
  
#   def artist_name=(name)
#   end
# end
