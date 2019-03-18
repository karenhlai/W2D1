# PHASE 2
def convert_to_int(str)
  begin
    Integer(str)
  rescue => exception
    puts "Input must be an integer!"
  ensure nil
  end
end



# PHASE 3
FRUITS = ["apple", "banana", "orange"]

def reaction(maybe_fruit)
  if FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
  else 
      raise ArgumentError
  end
end
  

def feed_me_a_fruit
  begin
    puts "Hello, I am a friendly monster. :)"
  
    puts "Feed me a fruit! (Enter the name of a fruit:)"

    maybe_fruit = gets.chomp
    reaction(maybe_fruit)
  rescue ArgumentError => e
    puts "I don't want tha shit"
    retry
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    begin
      @name = name
      @fav_pastime = fav_pastime
      @yrs_known = yrs_known
      raise ArgumentError if @name.length >= 0 || @fav_pastime.length >= 0
      raise DescriptiveError if @yrs_known <= 5
    rescue DescriptiveError => e
      puts "We're not that close!"
    # rescue ArgumentError => e
    #   puts "Name and Favorite pastime can't be empty!"
    end
    
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end

  

end


