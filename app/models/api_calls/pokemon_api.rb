require 'httparty'
require 'dotenv'
Dotenv.load

class PokemonAPI
    include HTTParty

    def self.fetch_pokemons #fetch first 2 generations, need to make seed info by generation
        url = "https://pokeapi.co/api/v2/pokemon?limit=251" 
        pokemons_response = HTTParty.get(url)
        pokemons_list = pokemons_response.body
        pokemons_list
    end
    def self.parse_pokemons
        pokemons_parsed = JSON.parse(self.fetch_pokemons)
        p pokemons_parsed['results']
    end
end
PokemonAPI.parse_pokemons