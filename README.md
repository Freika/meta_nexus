# MetaNexus

[![Build Status](https://travis-ci.org/Freika/meta_nexus.svg?branch=master)](https://travis-ci.org/Freika/meta_nexus)
[![Code Climate](https://codeclimate.com/github/Freika/meta_nexus/badges/gpa.svg)](https://codeclimate.com/github/Freika/meta_nexus)
[![Test Coverage](https://codeclimate.com/github/Freika/meta_nexus/badges/coverage.svg)](https://codeclimate.com/github/Freika/meta_nexus/coverage)
[![Dependency Status](https://gemnasium.com/Freika/meta_nexus.svg)](https://gemnasium.com/Freika/meta_nexus)


[TODO list](https://github.com/Freika/meta_nexus/blob/master/TODO.md)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'meta_nexus'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install meta_nexus

## Usage

Configure gem:

```ruby
MetaNexus.config do |c|
  c.region = 'us'
  c.locale = 'en_US'
  c.api_key = 'your_key'
end
```

Default value for region is `eu`, for locale - `en_GB`. Api key also can be stored in environment variable `ENV['BNET_API_KEY']`.

### Avaliable methods

#### World of Warcraft

```ruby
MetaNexus::Wow::Achievement.find(achievement_id) # - get achievement
MetaNexus::Wow::Auction.find(realm_name)         # - get url to current auction status (in JSON)
MetaNexus::Wow::BattlePet.ability(ability_id)    # - get battle pet ability
MetaNexus::Wow::BattlePet.species(species_id)    # - get battle pet species
MetaNexus::Wow::BattlePet.stats(pet_id)          # - get battle pet. you also can set breed_id, quality_id and level.
MetaNexus::Wow::ChallengeMode.realm(realm_name)  # - get challenge mode players rating on realm
MetaNexus::Wow::ChallengeMode.realm              # - get top-100 challenge mode players in current region

MetaNexus::Wow::Character.find(realm: realm_name, name: character_name) # - get character. you can also get additional info passing fields. Example:
#
# MetaNexus::Wow::Character.find(realm: 'shadowsong', name: 'Redstone', achievements: true, appearance: true, feed: true, guild: true, hunter_pets: true, items: true, mounts: true, pets: true, pet_slots: true, progression: true, pvp: true, quests: true, reputation: true, stats: true, talents: true, titles: true, audit: true)
#

MetaNexus::Wow::Data.battlegroups               # - get battlegroups
MetaNexus::Wow::Data.character_races            # - get character races
MetaNexus::Wow::Data.character_classes          # - get character classes
MetaNexus::Wow::Data.character_achievements     # - get character achievements
MetaNexus::Wow::Data.guild_achievements         # - get guild achievements
MetaNexus::Wow::Data.guild_rewards              # - get guild rewards
MetaNexus::Wow::Data.guild_perks                # - get guild perks
MetaNexus::Wow::Data.item_classes               # - get item classes
MetaNexus::Wow::Data.talents                    # - get talents
MetaNexus::Wow::Data.pet_types                  # - get pet types

MetaNexus::Wow::Guild.find(realm, guild_name)   # - get guild. you can also get additional info passing fields. Example:
#
# MetaNexus::Wow::Guild.find('shadowsong', 'Goblins', achievements: true, members: true, challenge: true, news: true)
#

MetaNexus::Wow::Item.find(id)                   # - find item
MetaNexus::Wow::Item.set(id)                    # - find item set
MetaNexus::Wow::Pvp.leaderboard(bracket)        # - get leaderboard in specific bracket. brackets: '2v2', '3v3', '5v5' and 'rbg'
MetaNexus::Wow::Quest.find(id)                  # - find quest
MetaNexus::Wow::Realm.status                    # - get status of realms in current region
MetaNexus::Wow::Recipe.find(id)                 # - find recipe
MetaNexus::Wow::Spell.find(id)                  # - find spell
```

#### Diablo 3

```ruby
MetaNexus::D3::Data.item(name)                  # - find item
MetaNexus::D3::Data.follower(class)             # - find follower
MetaNexus::D3::Data.artisan(name)               # - find artisan
MetaNexus::D3::Profile(battle_tag)              # - find profile
MetaNexus::D3::Profile(battle_tag, hero_id)     # - find hero
```

#### StarCraft 2

```ruby
MetaNexus::Sc2::Data.achievements                  # - get achievements
MetaNexus::Sc2::Data.rewards                       # - get rewards
MetaNexus::Sc2::Ladder.ladder(id)                  # - get ladder
MetaNexus::Sc2::Profile.profile(id, region, name)  # - get player profile
MetaNexus::Sc2::Profile.ladders(id, region, name)  # - get player ladders
MetaNexus::Sc2::Profile.match_history(id, region, name)  # - get player match history
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Freika/meta_nexus.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

