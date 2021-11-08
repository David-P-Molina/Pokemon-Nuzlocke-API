require 'httparty'
require 'byebug'
require 'dotenv'
Dotenv.load

class GenerationAPI
    include HTTParty
    def self.fetch_generations
        url = "https://pokeapi.co/api/v2/generation" 
        generations_response = HTTParty.get(url)
        generations_list = generations_response.body
        generations_list
    end
    def self.parse_generations
        generations_parsed = JSON.parse(self.fetch_generations)
        generations_parsed['results']
        #returns [{"name"=>"generation-i", "url"=>"https://pokeapi.co/api/v2/generation/1/"}, {"name"=>"generation-ii", "url"=>"https://pokeapi.co/api/v2/generation/2/"}, {"name"=>"generation-iii", "url"=>"https://pokeapi.co/api/v2/generation/3/"}, {"name"=>"generation-iv", "url"=>"https://pokeapi.co/api/v2/generation/4/"}, {"name"=>"generation-v", "url"=>"https://pokeapi.co/api/v2/generation/5/"}, {"name"=>"generation-vi", "url"=>"https://pokeapi.co/api/v2/generation/6/"}, {"name"=>"generation-vii", "url"=>"https://pokeapi.co/api/v2/generation/7/"}, {"name"=>"generation-viii", "url"=>"https://pokeapi.co/api/v2/generation/8/"}]
        # go to each url, pull main_region name, generation name, pokemon_species, versio_groups(pokemon games)
    end
    def self.fetch_generation(url)
        gen_response = HTTParty.get(url)
        gen_list = JSON.parse(gen_response.body)
        gen_list
    end
    def self.seperate_each_generation
        generations_list = self.parse_generations
        generations_list.each do |gen|
            url = gen['url']
            gen_info = self.fetch_generation(url)
            name = gen_info['main_region']['name']
            puts "#{name} = Generation.find_or_create_by(name: '#{name.capitalize}', release_date: '')"
        end
    end
    #generation name #pokemon_species name, url #version_groups, names of games
end
GenerationAPI.seperate_each_generation