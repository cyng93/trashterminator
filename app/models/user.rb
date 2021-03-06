class User < ApplicationRecord
  has_many :thrown_wastes, dependent: :destroy

  validates_uniqueness_of :email
  validates_uniqueness_of :username
  validates_length_of :username, minimum: 4,
                                 too_short: 'need to has at least 5 characters'
  validates_length_of :password, minimum: 8,
                                 too_short: 'need to has at least 8 characters',
                                 on: :create

  has_secure_password

  def update_score(new_score)
    self.update(score: new_score)
  end
end
