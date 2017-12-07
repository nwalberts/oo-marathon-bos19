class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    populate_cages
    @employees = []
  end

  def populate_cages
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(new_employee)
    @employees << new_employee
  end

  def open?(date)
    (@season_opening_date <= date) && (date <= @season_closing_date)
  end

  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      end
    end
    raise ZooAtCapacity
  end

  

end

class ZooAtCapacity < StandardError; end
