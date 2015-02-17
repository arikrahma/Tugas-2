class Player
   attr_accessor :blood, :manna, :name
   def initialize
    @name = ""
    @manna = 100
    @blood = 40
   end
end

class Menu
  attr_accessor :pemain_1, :pemain_2, :pemain_3
  def self.menu 
	   puts "#= = = = = = = = = = = = = = = = = = = = = = = = = = = #"
	   puts "#   		Welcome to Battle Arena                     #"
	   puts "#----------------------------------------------------- #" 
	   puts "# Description :                                        #"
	   puts "# 1. ketik “new” untuk membuat karakter                #"
	   puts "# 2. ketik “start” untuk memulai pertarungan           #"
	   puts "#----------------------------------------------------- #"
	   puts "# Current Player :                                     #" 
	   puts "#                                                      #" 
	   puts "# max player 2 atau 3                                  #" 
	   puts "#----------------------------------------------------- #" 
	   
	   input = gets.chomp
	   if input == "new"
		Menu.make_character
		elsif input == "start"
		Menu.start
	   end
  end

   def self.make_character 
	   puts "#= = = = = = = = = = = = = = = = = = = = = = = = = = = #"
	   puts "#   		Welcome to Battle Arena                     #"
	   puts "#----------------------------------------------------- #" 
	   puts "# Description :                                        #"
	   puts "# 1. ketik “new” untuk membuat karakter                #"
	   puts "# 2. ketik “start” untuk memulai pertarungan           #"
	   puts "#----------------------------------------------------- #"
	   puts "# Masukan Nama Player : <nama_player>                  #" 
	   puts "#                                                      #" 
	   puts "# max player 2 atau 3                                  #" 
	   puts "#----------------------------------------------------- #"   
	   puts "\n"
	   puts "Jumlah player (min 2) : "

	   input = gets.chomp
		   if input == "2" 
			 puts "Nama pemain 1 : "
			 input = gets.chomp
			 pemain1 = Player.new
			 pemain1.name = input
			 puts "Nama pemain 2 : "
			 input = gets.chomp
			 pemain2 = Player.new
			 pemain2.name = input
			 
			 pemain_1 = pemain1
			 pemain_2 = pemain2

			 Menu.menu
		   elsif input == "3" 
			 puts "Nama pemain 1 : "
			 input = gets.chomp
			 pemain1 = Player.new
			 pemain1.name = input
			 puts "Nama pemain 2 : "
			 input = gets.chomp
			 pemain2 = Player.new
			 pemain2.name = input
			 puts "Nama pemain 3 : "
			 input = gets.chomp
			 pemain3 = Player.new
			 pemain3.name = input
			 
			 pemain_1 = pemain1
			 pemain_2 = pemain2
			 pemain_3 = pemain3
			 
			 Menu.menu
		   else
			 puts "jumlah pemanin maksimal 3 minimal 2 !"
			 Menu.make_character
		   end
    end
	def self.start
	   puts "#= = = = = = = = = = = = = = = = = = = = = = = = = = = #"
	   puts "#   		Welcome to Battle Arena                     #"
	   puts "#----------------------------------------------------- #" 
	   puts "# Battle Start :                                       #"
	   puts "# siapa yang akan menyerang : <nama_player_1>          #"
	   puts "# siapa yang di serang: <nama_player_2>                #"
	   puts "#----------------------------------------------------- #"
	   puts "\n"
	   puts "Siapa yang akan menyerang : "
	   input = gets.chomp
	   puts "Siapa yang diserang : "
	   input2 = gets.chomp
	   if input == pemain_1.name
		pemain_2.manna = pemain_2.manna-20
		puts pemain_2.manna
	   end
	end
	
	def self.game_play
	
	end
   	
end
Menu.menu

