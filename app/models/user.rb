class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  belongs_to :location, optional: :true
        
  has_many :received_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewee_id'
  has_many :sent_user_ratings, :class_name => 'UserRating', :foreign_key => 'reviewer_id'
        
  has_many :conversations_as_buyer, :class_name => 'Conversation', :foreign_key => 'buyer_id'
  has_many :conversations_as_seller, :class_name => 'Conversation', :foreign_key => 'seller_id'
  has_many :messages

  belongs_to :profile
  has_one :watchlist
  has_many :items
  has_many :orders
  belongs_to :role
  has_many :watch_items, through: :watchlist

  has_many :sent_item_reviews, :class_name => 'ItemReview', :foreign_key => 'reviewer_id'


  after_initialize :set_default_role, :if => :new_record?
  before_save :assign_profile
  after_save :watchlist_init

  def set_default_role
    self.role = Role.find(1)
    self.profile = assign_profile
  end

  def assign_profile
    new_profile = Profile.new
    new_profile.name = nil
    new_profile.save!
    return new_profile
  end

  def watchlist_init
    new_watchlist = Watchlist.new
    new_watchlist.user = self
    new_watchlist.save!
  end
end
