require 'httparty'
require 'dotenv'
Dotenv.load
class API
    include HTTParty
    def self.fetch_generations
        url = "https://pokeapi.co/api/v2/generation" 
        generations_response = HTTParty.get(url)
        generations_list = generations_response.body
        generations_list
    end
    def self.parse_generations
        generations_parsed = JSON.parse(self.fetch_generations)
        p generations_parsed['results']
        #returns [{"name"=>"generation-i", "url"=>"https://pokeapi.co/api/v2/generation/1/"}, {"name"=>"generation-ii", "url"=>"https://pokeapi.co/api/v2/generation/2/"}, {"name"=>"generation-iii", "url"=>"https://pokeapi.co/api/v2/generation/3/"}, {"name"=>"generation-iv", "url"=>"https://pokeapi.co/api/v2/generation/4/"}, {"name"=>"generation-v", "url"=>"https://pokeapi.co/api/v2/generation/5/"}, {"name"=>"generation-vi", "url"=>"https://pokeapi.co/api/v2/generation/6/"}, {"name"=>"generation-vii", "url"=>"https://pokeapi.co/api/v2/generation/7/"}, {"name"=>"generation-viii", "url"=>"https://pokeapi.co/api/v2/generation/8/"}]
        # go to each url, pull main_region name, generation name, pokemon_species, versio_groups(pokemon games)
    end

end
API.parse_generations