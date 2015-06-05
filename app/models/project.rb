class Project < ActiveRecord::Base
  def released?
    !self.release_date.nil?
  end
 
  def self.released
    where("release_date <= ?", Time.now).order("release_date desc")
  end

  def self.recently_added
    order("release_date desc").limit(3)
  end
end
