module Concerns
  module Findable

    def self.find_by_name(name)
      binding.pry
      self.all.detect do
        |song| song.name == name
      end
    end

    def self.find_or_create_by_name(name)
      if self.find_by_name(name) == nil
        self.create(name)
      else
        self.find_by_name(name)
      end
    end
  end
end
