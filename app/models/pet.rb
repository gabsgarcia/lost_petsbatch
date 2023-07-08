class Pet < ApplicationRecord
  SPECIES = %W[gavião cachorro gato lagarto ]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES}
end
