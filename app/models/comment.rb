class Comment < ApplicationRecord
    validates :title, presence: true, length: {minimum:1, maximum:250}
    validates :content, presence: true, length: {minimum:1, maximum:5000}
    belongs_to :book
    belongs_to :user
end
