require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []


  def initialize(name, artist=nil, genre=nil)
    @name = name

    self.genre = genre
    self.artist = artist
  #  binding.pry

  end

  def genre=(genre)
    binding.pry
    if genre == nil
      genre.songs << self
    elsif genre.songs.include?(self)
    else
      genre.songs << self
    end

    @genre = genre
  end

  def genre
    @genre
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
#    binding.pry
  end


  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song =self.new(name)
    song.save
    song
  #  binding.pry
  end
end
