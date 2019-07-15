class Combattant < ApplicationRecord
  validates :nom, :points_de_vie, :points_d_attaque, presence: true
  validates :points_de_vie, numericality: {only_integer: true, less_than_or_equal_to:100, greater_than_or_equal_to: 80}
  validates :points_d_attaque, numericality: {only_integer: true, less_than_or_equal_to:20, greater_than_or_equal_to: 15}
end
