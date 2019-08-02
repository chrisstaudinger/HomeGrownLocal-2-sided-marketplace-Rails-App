class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :location
        
  has_many :received_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewee_id'
  has_many :sent_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewer_id'

  belongs_to :profile
  has_one :watchlist
  has_many :items
  has_many :orders
  belongs_to :role

  has_many :sent_item_reviews, :class_name => 'ItemReview', :foreign_key => 'reviewer_id'
end
