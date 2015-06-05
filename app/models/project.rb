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

  def self.recently_added
    order("release_date desc").limit(3)
  end
end
