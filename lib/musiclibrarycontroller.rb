class MusicLibraryController
  def initialize(path='./db/mp3s')
    @path = path
    MusicImporter.new(@path).import
  end

  def call
    puts "Welcome to your music library!"
    path=""
    while path != "exit"
        path = gets
    end

  end
end
