def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each { |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each { |season, contestant_list|
    contestant_list.each { |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0

  data.each { |season, contestant_list|
    contestant_list.each { |contestant_info|
      if contestant_info["hometown"] == hometown
        counter += 1
      end
    }
  }

  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each { |season, contestant_list|
    contestant_list.each { |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  number_of_contestants = 0
  data[season].each { |contestant|
    age_total += contestant["age"].to_i
    number_of_contestants += 1
  }

  average_age = age_total.to_f / number_of_contestants
  average_age.round
end
