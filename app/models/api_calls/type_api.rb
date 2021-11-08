require 'httparty'
require 'dotenv'
Dotenv.load

class TypeAPI
    include HTTParty
    def self.fetch_types
        url = "https://pokeapi.co/api/v2/type?limit=18" 
        types_response = HTTParty.get(url)
        types_list = types_response.body
        types_list
    end
    def self.parse_types
        types_parsed = JSON.parse(self.fetch_types)
        types_parsed['results']
    end
    def self.fetch_type(url)
        type_response = HTTParty.get(url)
        type_info = type_response.body
        type_parsed = JSON.parse(type_info)
    end
    def self.retrieve_types_info
        self.parse_types.each do |type|
            name = type['name']
            url = type['url']
            type_info = self.fetch_type(url)
            type_damage = type_info['damage_relations']
            p type_damage
            # for each type_damage retrieve name and push to string and set to value for Type.find_or_create
        end
    end
end
TypeAPI.retrieve_types_info