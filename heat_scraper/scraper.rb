require 'nokogiri'
require 'httparty'
require 'byebug'
require 'pry'

def scraper
    url = "https://www.nba.com/heat/roster"
    page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(page)
    player_list = parsed_page.css(".div.roster__player.focus--roster")
    players_list.each do |players|
        player = {
            name: player_list.css('.roster__player__header__heading').text,
            number:,
            height:,
            weight:,
            DOB:

        }
    end
    byebug
end

scraper





    <h2 class="roster__player__header__heading">Bam Adebayo</h2>
    #block-system-main > div > div > div > div > div > div > div.panel-pane.pane-etowah-stats-pane-roster > div > section.roster > div.roster__player.focus--roster > div
    