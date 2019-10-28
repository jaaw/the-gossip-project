class Gossip < ApplicationRecord
    belongs_to :user, required: false
	belongs_to :linktag, required: false
	has_many :tags, through: :linktags
end

