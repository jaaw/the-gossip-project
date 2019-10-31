class Gossip < ApplicationRecord
    belongs_to :user, dependent: :destroy
	has_many :linktags
	has_many :gossips, through: :linktags
	validates :title, presence: true
	validates :content, presence: true
	validates :user_id, presence: true
end

