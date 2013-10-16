class Code < ActiveRecord::Base
  belongs_to :category

  def self.search (search)
    search ? find(:all, conditions: ['description LIKE ?', "%#{search}%"]) : all
  end
end
