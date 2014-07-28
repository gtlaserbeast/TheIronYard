class Race
  attr_accessor :length, :number_of_horses, :line_up
  def initialize
    @length = 0
    @number_of_horses = 0
    @line_up = []
  end

  def setup
    puts "How many Horses are racing today?"
    @number_of_horses = gets.to_i
    puts "How many miles are being raced today? 15-60 for best function"
    @length = gets.to_i

    for i in 1..number_of_horses
      horse = Horse.new
      @line_up << horse.horse_namer
    end
  end

  def display_line_up
    @line_up.each {|horse|
      puts "#{horse.name} will be racing at a speed factor of #{horse.speed}!"
    }
  end

  def race_incrementor 
    game_over = false
    heat = 0
    while game_over == false
      win_position = 0
      win_name = ""
      @line_up.each {|horse|

        horse.move_forward
        horse.horse_pather
        if horse.position >= @length
          game_over = true
          if win_position < horse.position
            win_position = horse.position
            win_name = horse.name
          end
          # puts "#{win_name} has won the race!"
        end
      }
      if game_over
        puts "#{win_name.capitalize} has won the race!"
      end
      heat += 1
      puts "-----------------------------Heat #{heat}-----------------------------"
    end
  end

  # def win_check
  #   @line_up.each {|horse|
  #     if horse.position >= @length
  #       horse.won = true
  #       puts "#{horse.name} has won the race!"
  #       break
  #     end
  #   }
  # end

end

  class Horse
    attr_accessor :name, :speed, :position, :spurs, :path

    def initialize
      #Instance method
      @name = nil
      @speed = 1
      @position = 0
      @spurs = "n"
      @path = ""
    end

    def horse_namer
      horse = Horse.new
      puts "What would you like to name this horse?"
      horse.name = gets.chomp
      puts "How fast does #{horse.name} run? (Numbers from 1-4, please!)"
      horse.speed = gets.to_i
      puts "Does #{horse.name}'s rider wear spurs? (Y for yes / N for no)"
      horse.spurs = gets.chomp.downcase
      #somehow check to make sure Y or N has been entered here
      horse
    end

    def move_forward
      if @spurs == "y"
        #Chance to increase distance covered
        @position += @speed * rand(10)
        puts "spurred!"
      else
        #Calculating position
        @position += @speed * rand(5)
      end
    end

    def horse_pather
      @path = ""
      @position.times {@path += "~"}
      @path += "#{@name}"
      puts @path
    end

  end

race1 = Race.new
race1.setup
race1.display_line_up
race1.race_incrementor