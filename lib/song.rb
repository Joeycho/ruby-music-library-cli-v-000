require 'pry'

class Song

  attr_accessor :name, :artist, :genre

  @@all = []


  def initialize(name, artist=nil, genre=nil)
    @name = name

    if genre != nil
    self.genre = genre
    end

    if artist != nil
    self.artist = artist
    end
  #  binding.pry

  end

  def genre=(genre)
#    binding.pry
    if genre == nil
      return nil
    elsif genre.songs == nil
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
  end

  def find_by_name(name)
    self.class.all.detect do
      |song| song.name == name
    end
  end

  def find_or_create_by_name(name)
    self.class.all.each do
      |song| if song.name == name
              return song
            else
              self.create(name)
    end
  end

end
