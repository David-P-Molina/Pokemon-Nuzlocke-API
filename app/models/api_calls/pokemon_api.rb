require 'httparty'
require 'dotenv'
Dotenv.load

class PokemonAPI
    include HTTParty

    def self.fetch_pokemons
        url = "https://pokeapi.co/api/v2/pokemon?limit=251" 
        pokemons_response = HTTParty.get(url)
        pokemons_list = pokemons_response.body
        pokemons_list
    end
    def self.parse_pokemons
        pokemonss_parsed = JSON.parse(self.fetch_pokemons)
        pokemonss_parsed['results']
    end
end
PokemonAPI.retrieve_pokemons_info