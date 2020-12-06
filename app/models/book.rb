class Book < ApplicationRecord
	validates :title, presence: true
	validates :author, presence: true
  validates :pagecount, numericality: { greater_than_or_equal_to: 1,  only_integer: true }


	has_many :comments
	has_many :trades
	belongs_to :user
	delegate :username, to: :user

	scope :listed, -> {where(tradeable: true)}

end
