class River

attr_reader :name
attr_accessor :rivers_fish

def initialize(name, fish)
  @name = name
  @rivers_fish = fish
end # end initialize


def fish_count
  return @rivers_fish.count()
end

end # end class
