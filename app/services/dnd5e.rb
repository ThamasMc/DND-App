require 'net/http'
require 'uri'

class Dnd5e
  def initialize
    @base_url = "http://www.dnd5eapi.co/api/"
  end

  def search_races(name)
    desired_race = Race.find_by_name(name)
    return desired_race unless desired_race.nil?
    uri = URI.parse("#{@base_url}races/")
    response = Net::HTTP.get_response(uri)
    race_list = JSON.parse(response.body)

    race_list['results'].each do |race|
      desired_race = race if race['name'] == name
    end
    
    return 'Race does not exist' if desired_race == nil    
    describe_race(desired_race['url'])
  end

  def describe_race(race_url)
    uri = URI.parse(race_url)
    response = Net::HTTP.get_response(uri)
    description = JSON.parse(response.body)
    
    new_race = Race.new
    new_race.name = description['name'] 
    new_race.description = description['alignment']

    new_race.save!
    new_race
  end
end
