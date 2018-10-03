require "pry"

def get_first_name_of_season_winner(data, season)

  data[season].each do |girls|
    
    if girls["status"] == "Winner"
      
       return girls["name"].split(" ")[0]
       
    end
  end
end



def get_contestant_name(data, occupation)
   data.each do |szn, girls|
     
     girls.each do |info|
       
      if info["occupation"] == occupation
       return info["name"]
      end
     end
   end
   
   
end

def count_contestants_by_hometown(data, hometown)
 count = 0
 data.each do |szn, girls|
     
     girls.each do |info|
       
      if info["hometown"] == hometown
       count +=1
      end
     end
   end
   count
end

def get_occupation(data, hometown)
  
   data.each do |szn, girls|
     
     girls.find do |info|
       
      if info["hometown"] == hometown
       return info["occupation"]
      end
     end
   end
   
   
end
  

def get_average_age_for_season(data, season)
  
  age_array = []
  
    data[season].each do |girls|
        age_array.push(girls["age"].to_i)
        
    end
  
  # age_array.inject(0) { |sum, x| sum += x } /age_array.size.to_f.floor
  x = age_array.inject(0) { |sum, x| sum += x } / age_array.size.to_f

x.round
end
