class Code < ActiveRecord::Base

  def self.search (search)
    if search
      find(:all, conditions: ['name LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
