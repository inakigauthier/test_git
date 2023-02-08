class Menu < ApplicationRecord
    validates :name_menu, presence: true
    validates :rating, presence: true
    validates :ingredient, presence: true
    validates :not_ingredient, presence: true
end
