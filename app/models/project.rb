class Project < ActiveRecord::Base
  def released?
    !self.release_date.nil?
  end
 
  def self.released
    where("release_date <= ?", Time.now).order("release_date desc")
  end
end
