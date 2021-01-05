class Post < ApplicationRecord
  validates :title , presence: true , length: {maximum: 20}
  validates :start , presence: true
  validates :finish , presence: true
  
  def Post.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
