class Code < ActiveRecord::Base
  belongs_to :category

  attr_accessor :value

  def value
    name
  end

  def self.search (search)
    if search
      # :limit => 10
      find :all, conditions: ['description LIKE ? OR name LIKE ?', "%#{search}%", "%#{search}%"]
    else
      all
    end
  end
end
