require 'pry'

class Song 
  attr_accessor :name
  attr_reader :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(file_name)
    split_name = file_name.split(" - ")
    song = self.new(split_name[1])
<<<<<<< HEAD
    song.artist = Artist.find_or_create_by_name(split_name[0])
    song.artist.add_song(song)
=======
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.save
    artist.add_song(song)
>>>>>>> 423f361202380e257965d582504bebd4b430eb63
    song
   # binding.pry
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
end