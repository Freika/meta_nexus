class MetaNexus::Wow::Guild < MetaNexus::Wow

  # Find Guild profile in Battle.net WoW Api
  # Required arguments:
  # realm           - guild realm
  # guildname       - guild name
  #
  # Optional arguments:
  #
  # achievements: true  - guild achievements info
  # news: true          - guild news info
  # challenge: true     - guild challenge info
  # challenge: true     - guild challenge info
  # members: true       - guild members info
  #
  # Example:
  #   guild = MetaNexus::Wow::Guild.new('eu', 'en_US', 'api_key')
  #   guild.find('shadowsong', 'Goblins')
  # Response in Hash:
  #   {"lastModified"=>1435259544000, "name"=>"Goblins", "realm"=>"Shadowsong", "battlegroup"=>"Reckoning / Abrechnung", "level"=>25, "side"=>1, "achievementPoints"=>2500, "emblem"=>{"icon"=>12, "iconColor"=>"ffb1b8b1", "border"=>3, "borderColor"=>"ffffffff", "backgroundColor"=>"ff232323"}}
  #
  # If you want to get guild info with any additional fields, such as achievements or guild news, you should explicitly call it.
  # Example:
  #   guild.find('shadowsong', 'Redstone', news: true)
  # This will return guild info along with his news info.
  #

  def find(realm, guildname, **args)
    client = MetaNexus::Wow.new(@region, @api_key)
    call_url = "#{client.url}/guild/#{realm}/#{guildname}?"


    fields = 'fields=' if args
    fields += 'achievements,' if args[:achievements]
    fields += 'challenge,' if args[:challenge]
    fields += 'members,' if args[:members]
    fields += 'news,' if args[:news]

    call_url += fields if fields
    call_url += '&' if args

    call_url += "locale=#{@locale}&apikey=#{@api_key}"

    response = HTTParty.get(call_url)
    json = JSON.parse(response.body)
  end

end
