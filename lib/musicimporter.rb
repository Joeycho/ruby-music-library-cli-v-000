class MusicImporter
  def initialize(path)
    @path = path
  end

  def files
  files = Dir.entries(self.path)
    files.select do
   |file| file.end_with?('.mp3')
 end
  end

  def self.import
  end
end
