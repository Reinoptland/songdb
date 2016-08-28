class Artist < ApplicationRecord
  has_and_belongs_to_many :songs

  def self.order_by_name
    Artist.order("name asc")
  end

  def self.order_by_created_at
    Artist.order("created_at desc")
  end
end
