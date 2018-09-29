

def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |contestant_info|
    if(contestant_info["status"] == "Winner")
      winner = contestant_info["name"]
      winner = winner.split(" ")
    end
  end
  winner[0]
end

def get_contestant_name(data, occupation)
  target = nil
  data.each do |season, contestant|
    contestant.each do |person|
      if(person.has_value?(occupation))
        target = person["name"]
      end
    end
  end
  target
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestant|
    contestant.each do |person|
      if(person.has_value?(hometown))
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = nil
  count = 0
  data.each do |season, contestant|
    contestant.each do |person|
      if(person.has_value?(hometown) && count == 0)
        count +=1
        occupation = person["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  combined_age = 0.0
  count = 0.0
  data[season].each do |contestant|
    combined_age += contestant["age"].to_f
    count += 1
  end
  average = combined_age / count
  average.round()
end
