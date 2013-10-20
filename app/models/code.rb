class Code < ActiveRecord::Base
  belongs_to :category

  attr_accessor :value

  def value
    name
  end

  def self.search (search)
    # :limit => 10
    search ? find(:all, conditions: ['description LIKE ?', "%#{search}%"]) : all
  end
end
