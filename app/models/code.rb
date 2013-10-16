class Code < ActiveRecord::Base

  def self.search (search)
    if search
      find(:all, conditions: ['description LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
