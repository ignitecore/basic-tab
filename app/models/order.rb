class Order < ApplicationRecord
  has_many :items
  has_many :addons
end
