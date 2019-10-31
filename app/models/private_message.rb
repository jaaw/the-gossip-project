class PrivateMessage < ApplicationRecord
   # belongs_to :user
	#validates :content, presence: true
	#validates :user_id, presence: true
	belongs_to :sender, class_name: "User"
    belongs_to :recipient, class_name: "User"
    

end
