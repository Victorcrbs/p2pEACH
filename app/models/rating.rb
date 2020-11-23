class Rating < ApplicationRecord
    validates :nome, presence: true
    validates :nota, numericality: { only_integer: true, greater_than_or_equal_to:0,
    less_than_or_equal_to:10 }
end
