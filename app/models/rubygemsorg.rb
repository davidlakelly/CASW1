class RubyGemsOrg #nodoc
  include HTTParty
  include JSON
  def self.get_gem_info(name)
    url = "https://rubygems.org/api/v1/gems/#{name}.json"
    response = HTTParty.get(url)
    responsebody = JSON.parse(response.body)
    responsebody # does this return?
  end

  def self.get_gems_of_author(name)
    url = "https://rubygems.org/api/v1/owners/#{name}/gems.json"
    response = HTTParty.get(url)
    responsebody = JSON.parse(response.body)
    responsebody
  
  end

  def self.get_latest
    url = "https://rubygems.org/api/v1/activity/latest.json"
    response = HTTParty.get(url)
    responsebody = JSON.parse(response.body)
    responsebody
  end
end
quit