require 'pry'

class MP3Importer
  attr_accessor :path 
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(path)
    @files.select {|entry| entry.include?("mp3")}
  end 
  
  def import 
    files.each {|x| Song.new_by_filename(x)}
  end
  
end