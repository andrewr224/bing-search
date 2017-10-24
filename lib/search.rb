require 'rest-client'

class Bing
  BASE_URL = 'https://www.bing.com/search?q='

  def self.search(query)
    RestClient.get(BASE_URL + self.prepare(query))
  end

  def self.prepare(query)
    query.strip.gsub(/\s+/, '+')
  end
end
