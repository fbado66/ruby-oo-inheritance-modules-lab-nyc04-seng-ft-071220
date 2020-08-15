require 'pry'

class Artist
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods


  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    @@artists << self
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

  
end

# access by methodclass module --------------------------------------
# # def self.reset_all
#   #   # self.all.clear
#   # end

#   # def self.count
#   #   # self.all.count
#   # end

#   # def self.find_by_name(name)
#   #   @@artists.detect{|a| a.name == name}
#   # end

# access by instanceclass module ------------------------------------------
# # def to_param
#   #   name.downcase.gsub(' ', '-')
#   # end