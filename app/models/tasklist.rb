class Tasklist < ApplicationRecord
    validates :content, presence: true, length: { maximum: 255 }
end
