require 'spec_helper'

describe MetaNexus::Wow::BattlePet do

  let(:battlepet_client) {
    battlepet_client = MetaNexus::Wow::BattlePet.new('eu', 'en_US', ENV['BNET_API_KEY'])
  }

  it 'succesfully get ability info', :vcr do
    ability = battlepet_client.ability(640)
    expect(ability).to eq ({"id"=>640, "name"=>"Toxic Smoke", "icon"=>"spell_shadow_plaguecloud", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false})
  end

  it 'succesfully get species info', :vcr do
    species = battlepet_client.species(258)
    expect(species).to eq ({"speciesId"=>258, "petTypeId"=>9, "creatureId"=>42078, "name"=>"Mini Thor", "canBattle"=>true, "icon"=>"t_roboticon", "description"=>"Powerful artillery of the terran army. The Thor is always the first one in and the last one out!", "source"=>"Promotion: StarCraft II: Wings of Liberty Collector's Edition", "abilities"=>[{"slot"=>1, "order"=>1, "requiredLevel"=>2, "id"=>640, "name"=>"Toxic Smoke", "icon"=>"spell_shadow_plaguecloud", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>0, "order"=>0, "requiredLevel"=>1, "id"=>777, "name"=>"Missile", "icon"=>"ability_racial_rocketbarrage", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>0, "order"=>3, "requiredLevel"=>10, "id"=>455, "name"=>"Batter", "icon"=>"inv_mace_02", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>2, "order"=>2, "requiredLevel"=>4, "id"=>636, "name"=>"Sticky Grenade", "icon"=>"inv_misc_pyriumgrenade", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>2, "order"=>5, "requiredLevel"=>20, "id"=>293, "name"=>"Launch Rocket", "icon"=>"ability_mount_rocketmount", "cooldown"=>0, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}, {"slot"=>1, "order"=>4, "requiredLevel"=>15, "id"=>634, "name"=>"Minefield", "icon"=>"inv_misc_bomb_09", "cooldown"=>5, "rounds"=>1, "petTypeId"=>9, "isPassive"=>false, "hideHints"=>false}]})
  end

  it 'succesfully get stats info', :vcr do
    stats = battlepet_client.stats(258, breed_id: 5, level: 25, quality_id: 4)
    expect(stats).to eq ({"speciesId"=>258, "breedId"=>5, "petQualityId"=>4, "level"=>25, "health"=>1587, "power"=>315, "speed"=>297})
  end
end
