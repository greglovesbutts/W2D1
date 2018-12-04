require_relative "friends_error"
require_relative "empty_argument"
# PHASE 2
# def convert_to_int(str)
#   begin 
#     Integer(str)
#   rescue ArgumentError
#     nil
#   end 
# end

# PHASE 3
# FRUITS = ["apple", "banana", "orange"]

# def reaction(maybe_fruit)
#   if FRUITS.include? maybe_fruit
#     puts "OMG, thanks so much for the #{maybe_fruit}!"
#   else 
#     raise StandardError 
#   end 
# end

# def feed_me_a_fruit
#   puts "Hello, I am a friendly monster. :)"

#   puts "Feed me a fruit! (Enter the name of a fruit:)"
  
#   begin 
#   maybe_fruit = gets.chomp
#     reaction(maybe_fruit) 
#   rescue StandardError
#     puts "That's not fruit"
#     if maybe_fruit == "coffee"
#       puts "Thats coffee, feed me fruit!"
#       retry 
#     end 
#   end 
# end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
    if @yrs_known < 5
      raise FriendsError.new("We're not best friends, the number of years we've known each other is only #{@yrs_known}!")
    elsif @name.length == 0 || @fav_pastime.length == 0 
      raise EmptyArgumentError.new("something")
    end
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for the following number of years: #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

