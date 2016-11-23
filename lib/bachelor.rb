def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |results|
              if results["status"] == "Winner"
              return results["name"].split[0]
              end
     end
     return "Fail"
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, results|
   results.each do |person|
              if person["occupation"] == occupation
              return person["name"]
              end
   end
  end
     return "Fail"
end

def count_contestants_by_hometown(data, hometown)
        # code here
        count = 0
        data.each do |season, results|
         results.each do |person|
                    if person["hometown"] == hometown
                            count += 1
                    end
         end
        end
           return count
end

def get_occupation(data, hometown)
        # code here
        data.each do |season, results|
         results.each do |person|
                    if person["hometown"] == hometown
                    return person["occupation"]
                    end
         end
        end
           return "Fail"
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
          data[season].each do |results|
                  results.each do |key,value|
                          if key == "age"
                                  age_array << value
                          end
                  end
             end
  sum = 0
  age_array.each do |age|
          sum += age.to_i
  end
  (sum.to_f / age_array.length).round
end
