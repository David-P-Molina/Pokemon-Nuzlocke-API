require 'httparty'
require 'byebug'
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
    def self.fetch_a_pokemon(url)
        poke_response = HTTParty.get(url)
        poke_info = JSON.parse(poke_response.body)
        poke_info
    end
    def self.separate_pokemons
        pokemons_list = self.parse_pokemons
        pokemons_list.each do |poke|
            poke_info = self.fetch_a_pokemon(poke["url"])
            name = poke['name']

            byebug
        end
    end
end
PokemonAPI.separate_pokemons