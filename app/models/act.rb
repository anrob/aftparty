class Act < ActiveRecord::Base
  attr_accessible :name, :actcode, :premium, :videocode, :description
  has_many :contracts
  scope :find_acts, lambda { |acts| where("type_of_act = ?", "%mitzvah")}
end
