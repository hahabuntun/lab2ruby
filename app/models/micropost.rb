class Micropost < ApplicationRecord
    belongs_to :user
    validates :content, presence: true, length: { maximum: 140 }

    def check_user_id_exists
        errors.add(:user_id, "User must exist") unless User.exists?(user_id)
    end
end
  