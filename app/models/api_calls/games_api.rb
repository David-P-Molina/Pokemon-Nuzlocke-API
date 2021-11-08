require 'httparty'
require 'dotenv'
Dotenv.load

class GameAPI
    include HTTParty
    def self.fetch_games
        url = "https://pokeapi.co/api/v2/game?limit=18" 
        games_response = HTTParty.get(url)
        games_list = games_response.body
        games_list
    end
    def self.parse_games
        games_parsed = JSON.parse(self.fetch_games)
        p games_parsed['results']
    end
end
GameAPI.parse_games