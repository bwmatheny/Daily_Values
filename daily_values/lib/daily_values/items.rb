require_relative './scraper'
class Items
attr_accessor :name, :number
@@all = []
#a = Scraper.new("Essential Decadent Chocolate Brownie with Greek Yogurt Chips - Naturally Flavored", 78100, 110, 2, 15, 11)
#b = Scraper.new("Essential Decadent Chocolate Brownie with Greek Yogurt Chips2 - Naturally Flavored", 78101, 110, 2, 15, 11)
    def initialize(number)
        
        @@all << self
    end

    def self.all
       @@all
    end

    def call  
        input = gets.strip.to_i
        if input == 0
          goodbye 
        else
        x = Items.new(input)
        puts "#{x.name}"
        puts "Calories: #{x.calories} || Fat: #{x.fat}g || Carbs: #{x.carbs}g || Protein: #{x.protein}g"
        end
    end

    def search(input)
        a = Scraper.new(input)
    end

    def goodbye
        puts "Thank you for using Daily Values"
    end
    
end