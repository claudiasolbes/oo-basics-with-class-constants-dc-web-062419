require "pry"
class Shoe

  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    self.class.unique_brands(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def self.unique_brands(brand)
    if !BRANDS.include?(brand)
      BRANDS << brand
    end
  end

end
