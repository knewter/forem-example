class User < ActiveRecord::Base
  has_secure_password
  validates :password, :presence => { :on => :create }

  def to_s
    email
  end
end
