class Tag < ApplicationRecord
    has_many :tags, through: :linktags
    has_many :linktags
    has_many :users, through: :gossips
    validates :title, presence: true
end
