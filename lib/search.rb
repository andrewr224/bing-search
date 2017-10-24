require 'rest-client'

class Bing
  BASE_URL = 'https://www.bing.com/search?q='
  FILE = './index.html'

  def self.search(query)
    result = RestClient.get(BASE_URL + self.prepare(query))
    File.open(FILE, 'w') do |f|
      f.puts result
    end
    result
  end

  def self.prepare(query)
    query.strip.gsub(/\s+/, '+')
  end
end

Bing.search("Cats are awesome")
