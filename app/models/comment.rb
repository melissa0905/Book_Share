class Comment < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    belongs_to :book
    belongs_to :user
end
