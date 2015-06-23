module MetaNexus
  class Wow < MetaNexus::Api
    def url
      "#{super}/wow"
    end

    def achievement(args)
      url = MetaNexus::Wow::Achievement.new(args[:id])
    end
  end
end
