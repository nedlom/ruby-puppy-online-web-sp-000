# Add your code here
class Dog
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    @@all
  end
  
  def self.print_all
    self.all.each{|dog_name| puts dog_name.name}
  end
  
  def save
    self.class.all << self
  end
  
  def self.clear_all
    self.all.clear
  end
  
end