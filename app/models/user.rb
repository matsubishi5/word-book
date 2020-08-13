class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  def email_required?
    false
  end

  def self.ranking
    self.all.order(rate: 'DESC')
  end

  def my_rank(current_user)
    users = User.ranking
    @my_rank = 0
    users.each do |user|
      @my_rank += 1
      break if user.id == current_user.id
    end
    @my_rank
  end
end
