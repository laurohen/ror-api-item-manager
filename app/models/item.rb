class Item < ApplicationRecord
    validates :title , presence: true
    validates :description , presence: true
    validates :archived , presence: false
    validates :readed , presence: false
    validates :executed , presence: false
    validates :status , presence: true
end
