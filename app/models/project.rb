class Project < ActiveRecord::Base
  def released?
    if self.release_date.nil?
      false
    else
      true
    end
  end
 
  def self.released
    where("release_date <= ?", Time.now).order("release_date desc")
  end
end
