# Generations
kanto = Generation.find_or_create_by(region: 'Kanto', release_date: '')
johto = Generation.find_or_create_by(region: 'Johto', release_date: '')
hoenn = Generation.find_or_create_by(region: 'Hoenn', release_date: '')
sinnoh = Generation.find_or_create_by(region: 'Sinnoh', release_date: '')
unova = Generation.find_or_create_by(region: 'Unova', release_date: '')
kalos = Generation.find_or_create_by(region: 'Kalos', release_date: '')
alola = Generation.find_or_create_by(region: 'Alola', release_date: '')
galar = Generation.find_or_create_by(region: 'Galar', release_date: '')

# Types specify pokemon id
normal = Type.find_or_create_by(name: 'Normal',double_damage_from: 'Fighting', double_damage_to: '', half_damage_from: '', half_damage_to: 'Rock, Steel', no_damage_from: 'Ghost', no_damage_to: 'Ghost')
fighting = Type.find_or_create_by(name: 'Fighting',double_damage_from: 'Flying, Psychic, Fairy', double_damage_to: 'Normal, Rock, Steel, Ice, Dark', half_damage_from: 'Rock, Bug, Dark', half_damage_to: 'Flying, Poison, Bug, Psychic, Fairy', no_damage_from: '', no_damage_to: 'Ghost')
flying = Type.find_or_create_by(name: 'Flying',double_damage_from: 'Rock, Electric, Ice', double_damage_to: 'Fighting, Bug, Grass', half_damage_from: 'Fighting, Bug, Grass', half_damage_to: 'Rock, Steel, Electric', no_damage_from: 'Ground', no_damage_to: '')
poison = Type.find_or_create_by(name: 'Poison',double_damage_from: 'Ground, Psychic', double_damage_to: 'Grass, Fairy', half_damage_from: 'Fighting, Poison, Bug, Grass, Fairy', half_damage_to: 'Poison, Ground, Rock, Ghost', no_damage_from: '', no_damage_to: 'Steel')
ground = Type.find_or_create_by(name: 'Ground',double_damage_from: 'Water, Grass, Ice', double_damage_to: 'Poison, Rock, Steel, Fire, Electric', half_damage_from: 'Poison, Rock', half_damage_to: 'Bug, Grass', no_damage_from: 'Electric', no_damage_to: 'Flying')
rock = Type.find_or_create_by(name: 'Rock',double_damage_from: 'Fighting, Ground, Steel, Water, Grass', double_damage_to: 'Flying, Bug, Fire, Ice', half_damage_from: 'Normal, Flying, Poison, Fire', half_damage_to: 'Fighting, Ground, Steel', no_damage_from: '', no_damage_to: '')
bug = Type.find_or_create_by(name: 'Bug',double_damage_from: 'Flying, Rock, Fire', double_damage_to: 'Grass, Psychic, Dark', half_damage_from: 'Fighting, Ground, Grass', half_damage_to: 'Fighting, Flying, Poison, Ghost, Steel, Fire, Fairy', no_damage_from: '', no_damage_to: '')
ghost = Type.find_or_create_by(name: 'Ghost',double_damage_from: 'Ghost, Dark', double_damage_to: 'Ghost, Psychic', half_damage_from: 'Poison, Bug', half_damage_to: 'Dark', no_damage_from: 'Normal, Fighting', no_damage_to: 'Normal')
steel = Type.find_or_create_by(name: 'Steel',double_damage_from: 'Fighting, Ground, Fire', double_damage_to: 'Rock, Ice, Fairy', half_damage_from: 'Normal, Flying, Rock, Bug, Steel, Grass, Psychic, Ice, Dragon, Fairy', half_damage_to: 'Steel, Fire, Water, Electric', no_damage_from: 'Poison', no_damage_to: '')
fire = Type.find_or_create_by(name: 'Fire',double_damage_from: 'Ground, Rock, Water', double_damage_to: 'Bug, Steel, Grass, Ice', half_damage_from: 'Bug, Steel, Fire, Grass, Ice, Fairy', half_damage_to: 'Rock, Fire, Water, Dragon', no_damage_from: '', no_damage_to: '')
water = Type.find_or_create_by(name: 'Water',double_damage_from: 'Grass, Electric', double_damage_to: 'Ground, Rock, Fire', half_damage_from: 'Steel, Fire, Water, Ice', half_damage_to: 'Water, Grass, Dragon', no_damage_from: '', no_damage_to: '')
grass = Type.find_or_create_by(name: 'Grass',double_damage_from: 'Flying, Poison, Bug, Fire, Ice', double_damage_to: 'Ground, Rock, Water', half_damage_from: 'Ground, Water, Grass, Electric', half_damage_to: 'Flying, Poison, Bug, Steel, Fire, Grass, Dragon', no_damage_from: '', no_damage_to: '')
electric = Type.find_or_create_by(name: 'Electric',double_damage_from: 'Ground', double_damage_to: 'Flying, Water', half_damage_from: 'Flying, Steel, Electric', half_damage_to: 'Grass, Electric, Dragon', no_damage_from: '', no_damage_to: 'Ground')
psychic = Type.find_or_create_by(name: 'Psychic',double_damage_from: 'Bug, Ghost, Dark', double_damage_to: 'Fighting, Poison', half_damage_from: 'Fighting, Psychic', half_damage_to: 'Steel, Psychic', no_damage_from: '', no_damage_to: 'Dark')
ice = Type.find_or_create_by(name: 'Ice',double_damage_from: 'Fighting, Rock, Steel, Fire', double_damage_to: 'Flying, Ground, Grass, Dragon', half_damage_from: 'Ice', half_damage_to: 'Steel, Fire, Water, Ice', no_damage_from: '', no_damage_to: '')
dragon = Type.find_or_create_by(name: 'Dragon',double_damage_from: 'Ice, Dragon, Fairy', double_damage_to: 'Dragon', half_damage_from: 'Fire, Water, Grass, Electric', half_damage_to: 'Steel', no_damage_from: '', no_damage_to: 'Fairy')
dark = Type.find_or_create_by(name: 'Dark',double_damage_from: 'Fighting, Bug, Fairy', double_damage_to: 'Ghost, Psychic', half_damage_from: 'Ghost, Dark', half_damage_to: 'Fighting, Dark, Fairy', no_damage_from: 'Psychic', no_damage_to: '')
fairy = Type.find_or_create_by(name: 'Fairy',double_damage_from: 'Poison, Steel', double_damage_to: 'Fighting, Dragon, Dark', half_damage_from: 'Fighting, Bug, Dark', half_damage_to: 'Poison, Steel, Fire', no_damage_from: 'Dragon', no_damage_to: '')

# Games ## Game.find_or_create_by(name: '', release_date: '', description: '', generation_id: )
red = Game.find_or_create_by(name: 'Red', release_date: '1996', description: '', generation_id: kanto.id)
blue = Game.find_or_create_by(name: 'Blue', release_date: '1996', description: '', generation_id: kanto.id)
yellow = Game.find_or_create_by(name: 'Yellow', release_date: '1998', description: '', generation_id: kanto.id)
fire_red = Game.find_or_create_by(name: 'Fire-Red', release_date: '2004', description: '', generation_id: kanto.id)
leaf_green = Game.find_or_create_by(name: 'Leaf-Green', release_date: '2004', description: '', generation_id: kanto.id)
silver = Game.find_or_create_by(name: 'Silver', release_date: '1999', description: '', generation_id: johto.id)
gold = Game.find_or_create_by(name: 'Gold', release_date: '1999', description: '', generation_id: johto.id)
crystal = Game.find_or_create_by(name: 'Crystal', release_date: '2000', description: '', generation_id: johto.id)
heart_gold = Game.find_or_create_by(name: 'Heart-Gold', release_date: '2009', description: '', generation_id: johto.id)
soul_silver = Game.find_or_create_by(name: 'Soul-Silver', release_date: '2009', description: '', generation_id: johto.id)
ruby = Game.find_or_create_by(name: 'Ruby', release_date: '2002', description: '', generation_id: hoenn.id)
sapphire = Game.find_or_create_by(name: 'Sapphire', release_date: '2002', description: '', generation_id: hoenn.id)
emerald = Game.find_or_create_by(name: 'Emerald', release_date: '2004', description: '', generation_id: hoenn.id)
diamond = Game.find_or_create_by(name: 'Diamond', release_date: '', description: '', generation_id: sinnoh.id)
pearl = Game.find_or_create_by(name: 'Pearl', release_date: '', description: '', generation_id: sinnoh.id)
platinum= Game.find_or_create_by(name: 'Platinum', release_date: '', description: '', generation_id: sinnoh.id)
black = Game.find_or_create_by(name: 'Black', release_date: '', description: '', generation_id: unova.id)
white = Game.find_or_create_by(name: 'White', release_date: '', description: '', generation_id: unova.id)
black_two = Game.find_or_create_by(name: 'Black 2', release_date: '', description: '', generation_id: unova.id)
white_two = Game.find_or_create_by(name: 'White 2', release_date: '', description: '', generation_id: unova.id)