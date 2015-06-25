class MetaNexus::Wow::Recipe < MetaNexus::Wow

  # Find recipe info in Battle.net WoW Api
  # Required arguments:
  # id      - recipe id
  #
  # Example:
  #   recipe = MetaNexus::Wow::Recipe.new('eu', 'en_US', 'api_key')
  #   recipe.find('2v2')
  # Response in Hash:
  #   {"id"=>33994, "name"=>"Precise Strikes", "profession"=>"Enchanting", "icon"=>"spell_holy_greaterheal"}
  #


  def find(id)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/recipe/#{id}?locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end
end