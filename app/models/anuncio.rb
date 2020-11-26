class Anuncio < ApplicationRecord 
    has_many :comments
    belongs_to :usuario

    has_many_attached :imagens

    validates :item, presence: true
    validates :tipo, presence: true
end
