class Order < ApplicationRecord
  validates :name, :presence => true, :uniqueness => true
end
