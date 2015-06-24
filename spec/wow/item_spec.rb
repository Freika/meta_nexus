require 'spec_helper'

describe MetaNexus::Wow::Item do

  it 'succesfully get item info', :vcr do
    item_client = MetaNexus::Wow::Item.new('eu', 'en_US', ENV['BNET_API_KEY'])
    item = item_client.find(18803)
    expect(item).to eq ({"id"=>18803, "disenchantingSkillRank"=>225, "description"=>"Property of Finkle Einhorn, Grandmaster Adventurer", "name"=>"Finkle's Lava Dredger", "icon"=>"inv_gizmo_02", "stackable"=>1, "itemBind"=>1, "bonusStats"=>[{"stat"=>51, "amount"=>11}, {"stat"=>5, "amount"=>18}, {"stat"=>6, "amount"=>16}, {"stat"=>7, "amount"=>19}], "itemSpells"=>[], "buyPrice"=>474384, "itemClass"=>2, "itemSubClass"=>5, "containerSlots"=>0, "weaponInfo"=>{"damage"=>{"min"=>81, "max"=>122, "exactMin"=>81.0, "exactMax"=>122.0}, "weaponSpeed"=>2.9, "dps"=>35.0}, "inventoryType"=>17, "equippable"=>true, "itemLevel"=>70, "maxCount"=>0, "maxDurability"=>120, "minFactionId"=>0, "minReputation"=>0, "quality"=>4, "sellPrice"=>94876, "requiredSkill"=>0, "requiredLevel"=>60, "requiredSkillRank"=>0, "itemSource"=>{"sourceId"=>179703, "sourceType"=>"GAME_OBJECT_DROP"}, "baseArmor"=>0, "hasSockets"=>false, "isAuctionable"=>false, "armor"=>0, "displayInfoId"=>31265, "nameDescription"=>"", "nameDescriptionColor"=>"000000", "upgradable"=>true, "heroicTooltip"=>false, "context"=>"", "bonusLists"=>[], "availableContexts"=>[""], "bonusSummary"=>{"defaultBonusLists"=>[], "chanceBonusLists"=>[], "bonusChances"=>[]}})
  end

  it 'succesfully get item set info', :vcr do
    item_client = MetaNexus::Wow::Item.new('eu', 'en_US', ENV['BNET_API_KEY'])
    item = item_client.set(1060)
    expect(item).to eq ({"id"=>1060, "name"=>"Deep Earth Vestments", "setBonuses"=>[{"description"=>"Reduces the mana cost of Healing Touch and Rejuvenation by 5%.", "threshold"=>2}, {"description"=>"Your Rejuvenation and Regrowth spells have a 10% chance to Timeslip and have double the normal duration.", "threshold"=>4}], "items"=>[76749, 76750, 76751, 76752, 76753]})
  end
end
