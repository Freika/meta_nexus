require 'httparty'
# require 'vcr'
require 'meta_nexus/version'
require 'meta_nexus/api'
require 'meta_nexus/wow'
require 'meta_nexus/wow/achievement'
require 'meta_nexus/wow/auction'
require 'meta_nexus/wow/battlepet'
require 'meta_nexus/wow/challenge_mode'
require 'meta_nexus/wow/character'
require 'meta_nexus/wow/item'
require 'meta_nexus/wow/guild'
require 'meta_nexus/wow/pvp'
require 'meta_nexus/wow/quest'
require 'meta_nexus/wow/realm'
require 'meta_nexus/wow/spell'
require 'meta_nexus/wow/recipe'
require 'meta_nexus/wow/data'
require 'meta_nexus/d3'
require 'meta_nexus/d3/profile'
require 'meta_nexus/d3/data'
require 'meta_nexus/sc2'
require 'meta_nexus/sc2/profile'
require 'meta_nexus/sc2/ladder'
require 'meta_nexus/sc2/data'
require 'meta_nexus/config'

module MetaNexus
  def self.config
    @config ||= MetaNexus::Config.new
  end
end
