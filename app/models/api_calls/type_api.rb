require 'httparty'
require 'byebug'
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
    def self.process_damage_info(array)
        container = []
        array.each do |item|
            byebug
            container.push(item['name'])
        end
    end
    def self.retrieve_types_info
        self.parse_types.each do |type|
            name = type['name']
            url = type['url']
            type_info = self.fetch_type(url)
            type_damage = type_info['damage_relations']
            double_damage_from = type_damage['double_damage_from'].empty? ? 'true' : ''
            double_damage_to = type_damage['double_damage_to'].empty? ? self.process_damage_info(type_damage['double_damage_to']) : ''
            half_damage_from = type_damage['half_damage_from'].empty? ? self.process_damage_info(type_damage['half_damage_from']) : ''
            half_damage_to = type_damage['half_damage_to'].empty? ? self.process_damage_info(type_damage['half_damage_to']) : ''
            
            puts "#{name} = Type.find_or_create_by(name: '#{name.capitalize}',double_damage_from: #{double_damage_from}, double_damage_to: #{double_damage_to}, half_damage_from: , half_damage_to: , no_damage_from: , no_damage_to: )"
            # for each type_damage retrieve name and push to string and set to value for Type.find_or_create
        end
    end

end
TypeAPI.retrieve_types_info