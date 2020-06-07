require 'pry'

class Song
 extend Memorable::ClassMethods
 extend Findable
 include Paramable 
 include Memorable::InstanceMethods 

  
  
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  # def initialize
  #   @@songs << self
  # end

  # Refactoring the code above by Replace the .initialize method  with the code below: 

  # def initialize
  #   self.class.all << self
  # end

  # Now we have two .initialize methods that contain identical lines of code. We're ready for the next refactoring step––modules. Move the self.class.all << self to the Memorable::InstanceMethods b/c it's repeated in class Artist too 

  # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end

  def self.all
    @@songs
  end

  # def self.reset_all
  #   self.all.clear
  # end

  # def self.count
  #   self.all.count
  # end

  def artist=(artist)
    @artist = artist
  end

  # def to_param
  #   name.downcase.gsub(' ', '-')
  # end
end
