class Code < ActiveRecord::Base

  def self.search (search)
    search ? find(:all, conditions: ['description LIKE ?', "%#{search}%"]) : all
  end
end
