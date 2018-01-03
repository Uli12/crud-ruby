require 'httparty'
require 'json'
require 'pry'


# Constant - should not change
BASE_URL = "http://json-server.devpointlabs.com/api/v1"

#method all_users method
@users = HTTParty.get("#{BASE_URL}/users").parsed_response

  puts "Choose from the menu below to see, update, or delete user from DPL."
  puts "Menu"
  puts "1.All users"
  puts "2.Single user"
  puts "3.Add user"
  puts "4.Update user"
  puts "5.Selete user"
  puts "6.Quit"

  def all_users
    @users.each do |user|
      puts ['id']
      puts ['first_name']
      puts ['last_name']
      puts ['phone_number']
    end
  end

  def single_user
    puts "Choose from following."
    puts "id"
  end

  choice = gets.to_i
  case choice
    when 1
      all_users
    when 2
      
    when 3
    when 4
    when 5
    when 6
      puts "Good bye."
      exit
    else
      puts "Invalid choice. Return to menu."
      menu
 end
 

  


