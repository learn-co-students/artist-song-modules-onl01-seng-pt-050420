require 'pry'

class Artist 
 extend Memorable::ClassMethods
 extend Findable
 include Paramable 
 include Memorable::InstanceMethods

  
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  # def initialize
  #   @@artists << self                                                                                                                                
  #   @songs = []
  # end

  # Refactoring the code above by Replace the .initialize method  with the code below: 

  # def initialize
  #   self.class.all << self
  #   @songs = []
  # end

  # Now we have two .initialize methods that contain identical lines of code. We're ready for the next refactoring step––modules. Move the self.class.all << self to the Memorable::InstanceMethods b/c it's repeated in class Song too and keeps the @song = []
  def initialize
    super             #the super keywrod tells our Artist's .initialize method to use the code in the Memorable::InstanceMethods module's .initialize method and also to use any additional code in the Artist's .initialize method 
    @songs = []
  end

  # def self.find_by_name(name)
  #   @@artists.detect{|a| a.name == name}
  # end

  def self.all
    @@artists
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
