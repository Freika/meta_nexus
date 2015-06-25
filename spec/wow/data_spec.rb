require 'spec_helper'

describe MetaNexus::Wow::Data do

  skip 'succesfully get battlegroups info', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.battlegroups
    # TODO: Write hash to fixture and ensure it equals to real data
  end

  it 'succesfully get character races info', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.character_races
    expect(data).to eq({"races"=>[{"id"=>1, "mask"=>1, "side"=>"alliance", "name"=>"Human"}, {"id"=>1, "mask"=>1, "side"=>"alliance", "name"=>"Human"}, {"id"=>2, "mask"=>2, "side"=>"horde", "name"=>"Orc"}, {"id"=>2, "mask"=>2, "side"=>"horde", "name"=>"Orc"}, {"id"=>3, "mask"=>4, "side"=>"alliance", "name"=>"Dwarf"}, {"id"=>3, "mask"=>4, "side"=>"alliance", "name"=>"Dwarf"}, {"id"=>4, "mask"=>8, "side"=>"alliance", "name"=>"Night Elf"}, {"id"=>4, "mask"=>8, "side"=>"alliance", "name"=>"Night Elf"}, {"id"=>5, "mask"=>16, "side"=>"horde", "name"=>"Undead"}, {"id"=>5, "mask"=>16, "side"=>"horde", "name"=>"Undead"}, {"id"=>6, "mask"=>32, "side"=>"horde", "name"=>"Tauren"}, {"id"=>6, "mask"=>32, "side"=>"horde", "name"=>"Tauren"}, {"id"=>7, "mask"=>64, "side"=>"alliance", "name"=>"Gnome"}, {"id"=>7, "mask"=>64, "side"=>"alliance", "name"=>"Gnome"}, {"id"=>8, "mask"=>128, "side"=>"horde", "name"=>"Troll"}, {"id"=>8, "mask"=>128, "side"=>"horde", "name"=>"Troll"}, {"id"=>9, "mask"=>256, "side"=>"horde", "name"=>"Goblin"}, {"id"=>10, "mask"=>512, "side"=>"horde", "name"=>"Blood Elf"}, {"id"=>10, "mask"=>512, "side"=>"horde", "name"=>"Blood Elf"}, {"id"=>11, "mask"=>1024, "side"=>"alliance", "name"=>"Draenei"}, {"id"=>11, "mask"=>1024, "side"=>"alliance", "name"=>"Draenei"}, {"id"=>22, "mask"=>2097152, "side"=>"alliance", "name"=>"Worgen"}, {"id"=>24, "mask"=>8388608, "side"=>"neutral", "name"=>"Pandaren"}, {"id"=>25, "mask"=>16777216, "side"=>"alliance", "name"=>"Pandaren"}, {"id"=>26, "mask"=>33554432, "side"=>"horde", "name"=>"Pandaren"}]})
  end

  it 'succesfully get character classes info', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.character_classes
    expect(data).to eq({"classes"=>[{"id"=>3, "mask"=>4, "powerType"=>"focus", "name"=>"Hunter"}, {"id"=>4, "mask"=>8, "powerType"=>"energy", "name"=>"Rogue"}, {"id"=>1, "mask"=>1, "powerType"=>"rage", "name"=>"Warrior"}, {"id"=>2, "mask"=>2, "powerType"=>"mana", "name"=>"Paladin"}, {"id"=>7, "mask"=>64, "powerType"=>"mana", "name"=>"Shaman"}, {"id"=>8, "mask"=>128, "powerType"=>"mana", "name"=>"Mage"}, {"id"=>5, "mask"=>16, "powerType"=>"mana", "name"=>"Priest"}, {"id"=>6, "mask"=>32, "powerType"=>"runic-power", "name"=>"Death Knight"}, {"id"=>11, "mask"=>1024, "powerType"=>"mana", "name"=>"Druid"}, {"id"=>9, "mask"=>256, "powerType"=>"mana", "name"=>"Warlock"}, {"id"=>10, "mask"=>512, "powerType"=>"energy", "name"=>"Monk"}]})
  end

  skip 'succesfully get character achievements', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.character_achievements
    # TODO: Write hash to fixture and ensure it equals to real data
  end

  skip 'succesfully get guild rewards', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.guild_rewards
    # TODO: Write hash to fixture and ensure it equals to real data
  end

  it 'succesfully get guild perks', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.guild_perks
    expect(data).to eq({"perks"=>[{"guildLevel"=>1, "spell"=>{"id"=>78633, "name"=>"Mount Up", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_mountup", "description"=>"Increases speed while mounted by 10%.  Not active in Battlegrounds or Arenas.", "castTime"=>"Passive"}}, {"guildLevel"=>1, "spell"=>{"id"=>83944, "name"=>"Hasty Hearth", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_hastyhearth", "description"=>"Reduces the cooldown on your Hearthstone by 15 minutes.", "castTime"=>"Passive"}}, {"guildLevel"=>1, "spell"=>{"id"=>83968, "name"=>"Mass Resurrection", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_massresurrection", "description"=>"Brings all dead party and raid members back to life with 35% health and 35% mana.  A player may only be resurrected by this spell once every 10 minutes.  Cannot be cast in combat or while in a battleground or arena.", "range"=>"100 yd range", "castTime"=>"10 sec cast"}}, {"guildLevel"=>1, "spell"=>{"id"=>83950, "name"=>"The Quick and the Dead", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_quickanddead", "description"=>"Increases health gained when resurrected by 50% and increases movement speed while dead by 10%.  Does not function in combat or while in a Battleground or Arena.", "castTime"=>"Passive"}}, {"guildLevel"=>1, "spell"=>{"id"=>83951, "name"=>"Guild Mail", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_gmail", "description"=>"In-game mail sent between guild members now arrives instantly.", "castTime"=>"Passive"}}, {"guildLevel"=>1, "spell"=>{"id"=>83958, "name"=>"Mobile Banking", "subtext"=>"Guild Perk", "icon"=>"achievement_guildperk_mobilebanking", "description"=>"Summons a Guild Chest that allows access to your guild bank for 5 min.  Only guild members with guild reputation of friendly and above are allowed to use a Guild Chest.", "castTime"=>"3 sec cast", "cooldown"=>"60 min cooldown"}}]})
  end

  skip 'succesfully get guild achievements', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.guild_achievements
    # TODO: Write hash to fixture and ensure it equals to real data
  end

  it 'succesfully get item classes', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.item_classes
    expect(data).to eq({"classes"=>[{"class"=>17, "name"=>"Battle Pets", "subclasses"=>[{"subclass"=>0, "name"=>"BattlePet"}]}, {"class"=>0, "name"=>"Consumable", "subclasses"=>[{"subclass"=>5, "name"=>"Food & Drink"}, {"subclass"=>0, "name"=>"Consumable"}, {"subclass"=>1, "name"=>"Potion"}, {"subclass"=>2, "name"=>"Elixir"}, {"subclass"=>3, "name"=>"Flask"}, {"subclass"=>7, "name"=>"Bandage"}, {"subclass"=>6, "name"=>"Item Enhancement"}, {"subclass"=>4, "name"=>"Scroll"}, {"subclass"=>8, "name"=>"Other"}]}, {"class"=>1, "name"=>"Container", "subclasses"=>[{"subclass"=>4, "name"=>"Engineering Bag"}, {"subclass"=>3, "name"=>"Enchanting Bag"}, {"subclass"=>6, "name"=>"Mining Bag"}, {"subclass"=>5, "name"=>"Gem Bag"}, {"subclass"=>0, "name"=>"Bag"}, {"subclass"=>2, "name"=>"Herb Bag"}, {"subclass"=>1, "name"=>"Soul Bag"}, {"subclass"=>8, "name"=>"Inscription Bag"}, {"subclass"=>7, "name"=>"Leatherworking Bag"}, {"subclass"=>10, "name"=>"Cooking Bag"}, {"subclass"=>9, "name"=>"Tackle Box"}]}, {"class"=>2, "name"=>"Weapon", "subclasses"=>[{"subclass"=>173555, "name"=>"Melee Weapon"}, {"subclass"=>41105, "name"=>"One-Handed Melee Weapon"}, {"subclass"=>18, "name"=>"Crossbow"}, {"subclass"=>19, "name"=>"Wand"}, {"subclass"=>16, "name"=>"Thrown"}, {"subclass"=>17, "name"=>"Spear"}, {"subclass"=>20, "name"=>"Fishing Pole"}, {"subclass"=>3, "name"=>"Gun"}, {"subclass"=>2, "name"=>"Bow"}, {"subclass"=>1, "name"=>"Axe"}, {"subclass"=>0, "name"=>"Axe"}, {"subclass"=>7, "name"=>"Sword"}, {"subclass"=>6, "name"=>"Polearm"}, {"subclass"=>5, "name"=>"Mace"}, {"subclass"=>4, "name"=>"Mace"}, {"subclass"=>11, "name"=>"Exotic"}, {"subclass"=>10, "name"=>"Staff"}, {"subclass"=>9, "name"=>"Obsolete"}, {"subclass"=>8, "name"=>"Sword"}, {"subclass"=>15, "name"=>"Dagger"}, {"subclass"=>14, "name"=>"Miscellaneous"}, {"subclass"=>13, "name"=>"Fist Weapon"}, {"subclass"=>12, "name"=>"Exotic"}, {"subclass"=>262156, "name"=>"Ranged Weapon"}]}, {"class"=>3, "name"=>"Gem", "subclasses"=>[{"subclass"=>2, "name"=>"Yellow"}, {"subclass"=>1, "name"=>"Blue"}, {"subclass"=>4, "name"=>"Green"}, {"subclass"=>3, "name"=>"Purple"}, {"subclass"=>6, "name"=>"Meta"}, {"subclass"=>5, "name"=>"Orange"}, {"subclass"=>8, "name"=>"Prismatic"}, {"subclass"=>7, "name"=>"Simple"}, {"subclass"=>10, "name"=>"Cogwheel"}, {"subclass"=>9, "name"=>"Crystal of Fear"}, {"subclass"=>0, "name"=>"Red"}]}, {"class"=>4, "name"=>"Armor", "subclasses"=>[{"subclass"=>0, "name"=>"Miscellaneous"}, {"subclass"=>1, "name"=>"Cloth"}, {"subclass"=>2, "name"=>"Leather"}, {"subclass"=>3, "name"=>"Mail"}, {"subclass"=>4, "name"=>"Plate"}, {"subclass"=>5, "name"=>"Cosmetic"}, {"subclass"=>6, "name"=>"Shield"}, {"subclass"=>7, "name"=>"Libram"}, {"subclass"=>8, "name"=>"Idol"}, {"subclass"=>9, "name"=>"Totem"}, {"subclass"=>10, "name"=>"Sigil"}, {"subclass"=>11, "name"=>"Relic"}, {"subclass"=>96, "name"=>"Shield"}]}, {"class"=>5, "name"=>"Reagent", "subclasses"=>[{"subclass"=>0, "name"=>"Reagent"}]}, {"class"=>6, "name"=>"Projectile", "subclasses"=>[{"subclass"=>3, "name"=>"Bullet"}, {"subclass"=>2, "name"=>"Arrow"}]}, {"class"=>7, "name"=>"Trade Goods", "subclasses"=>[{"subclass"=>0, "name"=>"Trade Goods"}, {"subclass"=>10, "name"=>"Elemental"}, {"subclass"=>15, "name"=>"Weapon Enchantment - Obsolete"}, {"subclass"=>5, "name"=>"Cloth"}, {"subclass"=>6, "name"=>"Leather"}, {"subclass"=>7, "name"=>"Metal & Stone"}, {"subclass"=>8, "name"=>"Cooking"}, {"subclass"=>9, "name"=>"Herb"}, {"subclass"=>12, "name"=>"Enchanting"}, {"subclass"=>4, "name"=>"Jewelcrafting"}, {"subclass"=>1, "name"=>"Parts"}, {"subclass"=>3, "name"=>"Devices"}, {"subclass"=>2, "name"=>"Explosives"}, {"subclass"=>13, "name"=>"Materials"}, {"subclass"=>11, "name"=>"Other"}, {"subclass"=>14, "name"=>"Item Enchantment"}]}, {"class"=>9, "name"=>"Recipe", "subclasses"=>[{"subclass"=>0, "name"=>"Book"}, {"subclass"=>1, "name"=>"Leatherworking"}, {"subclass"=>2, "name"=>"Tailoring"}, {"subclass"=>3, "name"=>"Engineering"}, {"subclass"=>4, "name"=>"Blacksmithing"}, {"subclass"=>5, "name"=>"Cooking"}, {"subclass"=>6, "name"=>"Alchemy"}, {"subclass"=>10, "name"=>"Jewelcrafting"}, {"subclass"=>9, "name"=>"Fishing"}, {"subclass"=>8, "name"=>"Enchanting"}, {"subclass"=>7, "name"=>"First Aid"}, {"subclass"=>11, "name"=>"Inscription"}]}, {"class"=>11, "name"=>"Quiver", "subclasses"=>[{"subclass"=>2, "name"=>"Quiver"}, {"subclass"=>3, "name"=>"Ammo Pouch"}]}, {"class"=>12, "name"=>"Quest", "subclasses"=>[{"subclass"=>0, "name"=>"Quest"}]}, {"class"=>13, "name"=>"Key", "subclasses"=>[{"subclass"=>1, "name"=>"Lockpick"}, {"subclass"=>0, "name"=>"Key"}]}, {"class"=>15, "name"=>"Miscellaneous", "subclasses"=>[{"subclass"=>4, "name"=>"Other"}, {"subclass"=>3, "name"=>"Holiday"}, {"subclass"=>2, "name"=>"Companion Pets"}, {"subclass"=>1, "name"=>"Reagent"}, {"subclass"=>0, "name"=>"Junk"}, {"subclass"=>5, "name"=>"Mount"}]}, {"class"=>16, "name"=>"Glyph", "subclasses"=>[{"subclass"=>3, "name"=>"Hunter"}, {"subclass"=>2, "name"=>"Paladin"}, {"subclass"=>5, "name"=>"Priest"}, {"subclass"=>4, "name"=>"Rogue"}, {"subclass"=>1, "name"=>"Warrior"}, {"subclass"=>11, "name"=>"Druid"}, {"subclass"=>10, "name"=>"Monk"}, {"subclass"=>7, "name"=>"Shaman"}, {"subclass"=>6, "name"=>"Death Knight"}, {"subclass"=>9, "name"=>"Warlock"}, {"subclass"=>8, "name"=>"Mage"}]}, {"class"=>18, "name"=>"WoW Token", "subclasses"=>[{"subclass"=>0, "name"=>"WoW Token"}]}]})
  end

  skip 'succesfully get talents', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.talents
    # TODO: Write hash to fixture and ensure it equals to real data
  end

  it 'succesfully get pet types', :vcr do
    data_client = MetaNexus::Wow::Data.new('eu', 'en_US', ENV['BNET_API_KEY'])
    data = data_client.pet_types
    expect(data).to eq({"petTypes"=>[{"id"=>0, "key"=>"humanoid", "name"=>"Humanoid", "typeAbilityId"=>238, "strongAgainstId"=>1, "weakAgainstId"=>7}, {"id"=>1, "key"=>"dragonkin", "name"=>"Dragonkin", "typeAbilityId"=>245, "strongAgainstId"=>5, "weakAgainstId"=>3}, {"id"=>2, "key"=>"flying", "name"=>"Flying", "typeAbilityId"=>239, "strongAgainstId"=>8, "weakAgainstId"=>1}, {"id"=>3, "key"=>"undead", "name"=>"Undead", "typeAbilityId"=>242, "strongAgainstId"=>0, "weakAgainstId"=>8}, {"id"=>4, "key"=>"critter", "name"=>"Critter", "typeAbilityId"=>236, "strongAgainstId"=>3, "weakAgainstId"=>0}, {"id"=>5, "key"=>"magical", "name"=>"Magic", "typeAbilityId"=>243, "strongAgainstId"=>2, "weakAgainstId"=>9}, {"id"=>6, "key"=>"elemental", "name"=>"Elemental", "typeAbilityId"=>241, "strongAgainstId"=>9, "weakAgainstId"=>4}, {"id"=>7, "key"=>"beast", "name"=>"Beast", "typeAbilityId"=>237, "strongAgainstId"=>4, "weakAgainstId"=>2}, {"id"=>8, "key"=>"water", "name"=>"Aquatic", "typeAbilityId"=>240, "strongAgainstId"=>6, "weakAgainstId"=>5}, {"id"=>9, "key"=>"mechanical", "name"=>"Mechanical", "typeAbilityId"=>244, "strongAgainstId"=>7, "weakAgainstId"=>6}]})
  end

end
