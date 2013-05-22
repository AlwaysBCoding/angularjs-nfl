namespace :db do
  desc "Populates the players table with the Redskins roster"
  task :players => :environment do
    require 'open-uri'

    Team.all.each do |team|
      puts "====================="
      puts "Creating Roster: #{team.display_name}"
      puts "====================="


      url = "http://www.nfl.com/teams/roster?team=#{team.abbr}"
      doc = Nokogiri::HTML(open(url))

      doc.at_css("#result").css("tr").each_with_index do |player, index|
        if index == 0
          next
        end

        height_array = player.css("td:nth-child(6)").text.gsub('"', '').split("'").map(&:to_i)

        new_player               = Player.new
        new_player.team_id       = team.id
        new_player.jersey_number = player.css("td:nth-child(1)").text.to_i
        new_player.lastname      = player.css("td:nth-child(2)").text.split(',')[0].strip.downcase
        new_player.firstname     = player.css("td:nth-child(2)").text.split(',')[1].strip.downcase
        new_player.position      = player.css("td:nth-child(4)").text.downcase
        new_player.status        = player.css("td:nth-child(5)").text.downcase
        new_player.height        = (height_array[0] * 12) + height_array[1]
        new_player.weight        = player.css("td:nth-child(7)").text.to_i
        new_player.experience    = player.css("td:nth-child(9)").text.to_i
        new_player.college       = player.css("td:nth-child(10)").text.downcase

        begin
          new_player.birthdate   = Date.strptime(player.css("td:nth-child(8)").text, "%m/%d/%Y")
        rescue
        end

        new_player.save
        puts "Creating Player: #{new_player.display_name}"
      end

    end

  end
end
