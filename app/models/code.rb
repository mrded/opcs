class Code < ActiveRecord::Base
  belongs_to :category

  def self.search (search)
    if search
      find :all, conditions: ['description LIKE ? OR name LIKE ?', "%#{search}%", "%#{search}%"]
    else
      all
    end
  end
end
