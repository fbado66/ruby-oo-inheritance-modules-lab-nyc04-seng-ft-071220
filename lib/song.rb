require 'pry'

class Song

  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end


end

# access by instancemethods module -----------------------------------------
# def to_param
  #   name.downcase.gsub(' ', '-')
  # end

# access by classmethods module ------------------------------------------
# def self.reset_all
  #   # self.all.clear
  # end

  # def self.count
  #   # self.all.count
  # end

   # def self.find_by_name(name)
  #   @@songs.detect{|a| a.name == name}
  # end
