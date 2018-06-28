def get_first_name_of_season_winner(data, season)
  # code here
  winner = {}
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |person|
        if person["status"] = "Winner"
          return person["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  total_contestants = 0
  data.each do |season_number, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        total_contestants += 1
      end
    end
  end
  total_contestants
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |person|
        ages << person["age"].to_f  
      end
    end
  end
  average = 0 
  ages.each do |age|
    average += age  
  end
  (average / ages.length)
end
