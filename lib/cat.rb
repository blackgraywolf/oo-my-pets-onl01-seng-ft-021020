class Cat 
  attr_reader :name, :mood
  attr_accessor :owner
@@all = []
  def initialize(name,owner)
    @name = name
    @owner = owner
    @owner.pets[:cats] << self
    @mood = "nervous"
    @@all << self
    self
  end

  def mood=(mood)
    @mood =mood
  end
  
    def self.all
      @@all
    end
end