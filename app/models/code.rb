class Code < ActiveRecord::Base

  def self.search (search)
    if search
      find(:all, conditions: ['code LIKE ?', "%#{search}%"])
    else
      all
    end
  end
end
