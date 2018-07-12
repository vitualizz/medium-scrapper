require "medium/scrapper/version"
require 'open-uri'
require 'active_support/core_ext/hash'

module Medium
  module Scrapper
    def self.get(username, type)
      user = Hash.from_xml(open("https://medium.com/feed/@" + username).read)
      if type == "name"
        user["rss"]["channel"]["title"].split(" ").slice(2..-3)
      elsif type == "posts"
        user["rss"]["channel"]["item"]
      elsif type == "url"
        "https://medium.com/@" + username
      else
        "POr ahora solo se maneja NOMBRE, POSTS Y URL."
      end
    end
  end
end
