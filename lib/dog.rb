# Add your code here
class Dog

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name 
        save 
    end

    def save
        @@all << self
    end

    def self.all
         @@all
    end

    def self.print_all
        self.all.map {|i| puts "#{i.name}"}
    end
    
    def self.clear_all
        self.all.replace([])
    end
end