module MetaNexus
  class Wow < MetaNexus::Api
    def url
      "#{super}/wow"
    end
 end
end
