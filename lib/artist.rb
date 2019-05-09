require 'pry'

class Artist 
  attr_accessor :name
  attr_reader :songs
  
  @@all = []
  #contains all ARTIST objects that have been created
  
  def initialize(name)
    @name = name
    @songs = []
    #lists all songs BELONGING to the created artist object
  end
  
  def add_song(song)
    @songs << song 
    #adds song to the list of songs belonging to artist instance
  end
  
  def self.all
    @@all
  end
  
  def save
<<<<<<< HEAD
    @@all << self
    self
=======
    @@all << self 
>>>>>>> 423f361202380e257965d582504bebd4b430eb63
    #saves artist instance to list of all artists
  end
  
  def print_songs
    songs.each {|song| puts song.name}
  end
    
  def self.find_or_create_by_name(name)
<<<<<<< HEAD
    self.all.find {|artist| artist.name == name} || Artist.new(name).save
=======
    self.all.find {|artist| artist.name == name} || Artist.new(name)
>>>>>>> 423f361202380e257965d582504bebd4b430eb63
  end
  
end