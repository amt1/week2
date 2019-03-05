class Bear

attr_reader :name

def initialize(name)
  @name = name
  @stomach = []
end # end initialize

def roar
  return "Roar!"
end

def food_count
  return @stomach.count()
end

def bear_catch_fish(river)
  if river.fish_count > 0
    @stomach << river.rivers_fish.pop()
  end
end

end # end class
