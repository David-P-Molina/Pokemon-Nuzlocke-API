require 'httparty'
require 'byebug'
require 'dotenv'
Dotenv.load

class PokemonAPI
    include HTTParty

    def self.fetch_pokemons #fetch first 2 generations, need to make seed info by generation
        url = "https://pokeapi.co/api/v2/pokemon-species?limit=251" 
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
        poke_info #retrieve base_happiness,capture_rate,evolution_chain_url,evolves_from_species,
        #retrieve flavor_text_entries[0](pokedex_entry),generation,habitat,is_baby,is_legendary,is_mythical,
    end
    def self.separate_pokemons
        pokemons_list = self.parse_pokemons
        pokemons_list.each do |poke|
            poke_info = self.fetch_a_pokemon(poke["url"])
            name = poke['name']
            # Use pokedex number to create another fetch call to  https://pokeapi.co/api/v2/pokemon/1
            #retrieve sprites(back_default, front_default, official-artwork) types, weight, height, abilities,  
            byebug
        end
    end
end
PokemonAPI.separate_pokemons