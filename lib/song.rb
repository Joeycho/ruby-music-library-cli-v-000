require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []


  def initialize(name, artist, genre)
    @name = name

    if genre != nil
    self.genre = genre
    end

    if artist != nil
    self.artist = artist
    end
  end

  def genre=(genre)
    if genre.songs.include?(self)
    else
    genre.songs << self
    end
    binding.pry
    @genre = genre
  end

  def genre
    @genre
  end

  def artist=(artist)
    @artist = artist
    @artist.add_song(self)
    binding.pry
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
