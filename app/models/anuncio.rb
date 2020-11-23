class Anuncio < ApplicationRecord 
    has_many :comments
    belongs_to :usuario

    validates :item, presence: true
    validates :tipo, presence: true
end
