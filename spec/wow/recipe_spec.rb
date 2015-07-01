require 'spec_helper'

describe MetaNexus::Wow::Recipe do
  it 'succesfully get recipe info', :vcr do
    recipe_client = MetaNexus::Wow::Recipe
    recipe = recipe_client.find(33994)
    expect(recipe).to eq({"id"=>33994, "name"=>"Precise Strikes", "profession"=>"Enchanting", "icon"=>"spell_holy_greaterheal"})
  end
end
