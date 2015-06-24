require 'spec_helper'

describe MetaNexus::Wow::Character do
  let(:character_client) { MetaNexus::Wow::Character.new('eu', 'en_US', ENV['BNET_API_KEY']) }

  it 'succesfully get character info', :vcr do
    character = character_client.find('shadowsong', 'Redstone')
    expect(character).to eq ({"lastModified"=>1435160620000, "name"=>"Redstone", "realm"=>"Shadowsong", "battlegroup"=>"Reckoning / Abrechnung", "class"=>8, "race"=>2, "gender"=>1, "level"=>90, "achievementPoints"=>8390, "thumbnail"=>"internal-record-3666/105/93238889-avatar.jpg", "calcClass"=>"e", "totalHonorableKills"=>4519})
  end

  it 'succesfully get character info along with additional fields info', :vcr do
    character = character_client.find('shadowsong', 'Redstone', appearance: true, stats: true)
    expect(character).to eq ({"lastModified"=>1435160620000, "name"=>"Redstone", "realm"=>"Shadowsong", "battlegroup"=>"Reckoning / Abrechnung", "class"=>8, "race"=>2, "gender"=>1, "level"=>90, "achievementPoints"=>8390, "thumbnail"=>"internal-record-3666/105/93238889-avatar.jpg", "calcClass"=>"e", "stats"=>{"health"=>52038, "powerType"=>"mana", "power"=>37000, "str"=>185, "agi"=>247, "int"=>1062, "sta"=>1062, "speedRating"=>0.0, "speedRatingBonus"=>0.0, "crit"=>20.043478, "critRating"=>346, "haste"=>19.000008, "hasteRating"=>342, "hasteRatingPercent"=>19.0, "mastery"=>35.373913, "masteryRating"=>176, "spr"=>327, "bonusArmor"=>0, "multistrike"=>8.0, "multistrikeRating"=>0.0, "multistrikeRatingBonus"=>0.0, "leech"=>0.0, "leechRating"=>0.0, "leechRatingBonus"=>0.0, "versatility"=>0, "versatilityDamageDoneBonus"=>0.0, "versatilityHealingDoneBonus"=>0.0, "versatilityDamageTakenBonus"=>0.0, "avoidanceRating"=>0.0, "avoidanceRatingBonus"=>0.0, "spellPower"=>1308, "spellPen"=>0, "spellCrit"=>20.043478, "spellCritRating"=>346, "mana5"=>5767.0, "mana5Combat"=>3962.0, "armor"=>152, "dodge"=>3.0, "dodgeRating"=>0, "parry"=>0.0, "parryRating"=>0, "block"=>0.0, "blockRating"=>0, "mainHandDmgMin"=>37.0, "mainHandDmgMax"=>70.0, "mainHandSpeed"=>1.513, "mainHandDps"=>35.36021, "offHandDmgMin"=>0.0, "offHandDmgMax"=>0.0, "offHandSpeed"=>1.681, "offHandDps"=>0.0, "rangedDmgMin"=>-1.0, "rangedDmgMax"=>-1.0, "rangedSpeed"=>-1.0, "rangedDps"=>-1.0, "attackPower"=>0, "rangedAttackPower"=>0}, "appearance"=>{"faceVariation"=>4, "skinColor"=>7, "hairVariation"=>14, "hairColor"=>0, "featureVariation"=>2, "showHelm"=>true, "showCloak"=>true}, "totalHonorableKills"=>4519})
  end
end






