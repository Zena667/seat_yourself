class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :owned_restaurant_id
  has_secure_password

  validates :name, :email, presence: true
  validates_presence_of :password, :on => :create
  has_many :reservations
  has_many :points
  before_save :create_remember_token

  private

  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end

end
