class Linktag < ApplicationRecord
    belong_to :tag
    belongs_to :gossip
end
