class Project < ActiveRecord::Base
  def released?
    if self.release_date.nil?
      false
    else
      true
    end
  end
end
