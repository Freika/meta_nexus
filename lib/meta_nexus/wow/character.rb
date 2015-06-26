class MetaNexus::Wow::Character < MetaNexus::Wow
  attr_accessor :achievements, :appearance, :feed, :guild, :hunter_pets, :items,
                :mounts, :pets, :pet_slots, :progression, :pvp, :quests, :reputation,
                :stats, :talents, :titles, :audit

  # Find Character in Battle.net WoW Api
  # Required arguments:
  # realm      - character realm
  # name       - character name
  #
  # Optional arguments:
  #
  # achievements: true  - character achievements info
  # appearance: true    - character appearance info
  # feed: true          - character feed info
  # guild: true         - character guild info
  # hunter_pets: true   - character hunter_pets info
  # items: true         - character items info
  # mounts: true        - character mounts info
  # pets: true          - character pets info
  # pet_slots: true     - character pet_slots info
  # progression: true   - character progression info
  # pvp: true           - character pvp info
  # quests: true        - character quests info
  # reputation: true    - character reputation info
  # stats: true         - character stats info
  # talents: true       - character talents info
  # titles: true        - character titles info
  # audit: true         - character audit info
  #
  # Example:
  #   character = MetaNexus::Wow::Character.new('eu', 'en_US', 'api_key')
  #   character.find('shadowsong', 'Redstone')
  # Response in Hash:
  #   {"lastModified"=>1435160620000, "name"=>"Redstone", "realm"=>"Shadowsong", "battlegroup"=>"Reckoning / Abrechnung", "class"=>8, "race"=>2, "gender"=>1, "level"=>90, "achievementPoints"=>8390, "thumbnail"=>"internal-record-3666/105/93238889-avatar.jpg", "calcClass"=>"e", "totalHonorableKills"=>4519}
  #
  # If you want to get character info with any additional fields, such as achievements or character appearance, you should explicitly call it.
  # Example:
  #   character.find('shadowsong', 'Redstone', appearance: true)
  # This will return character info along with his appearance info.
  #

  def find(realm, name, **args)
    call_url = "#{client.url}/character/#{realm}/#{name}?"

    fields = 'fields=' if args
    fields += 'achievements,' if args[:achievements]
    fields += 'appearance,' if args[:appearance]
    fields += 'feed,' if args[:feed]
    fields += 'guild,' if args[:guild]
    fields += 'hunter_pets,' if args[:hunter_pets]
    fields += 'items,' if args[:items]
    fields += 'mounts,' if args[:mounts]
    fields += 'pets,' if args[:pets]
    fields += 'pet_slots,' if args[:pet_slots]
    fields += 'progression,' if args[:progression]
    fields += 'pvp,' if args[:pvp]
    fields += 'quests,' if args[:quests]
    fields += 'reputation,' if args[:reputation]
    fields += 'stats,' if args[:stats]
    fields += 'talents,' if args[:talents]
    fields += 'titles,' if args[:titles]
    fields += 'audit' if args[:audit]

    call_url += fields if fields
    call_url += '&' if args
    call_url += "locale=#{@locale}&apikey=#{@api_key}"
    call_api(call_url)
  end
end
