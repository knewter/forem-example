class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  authenticates_with_sorcery!

  validates_confirmation_of :password, :on => :create, :message => "should match confirmation"

  has_many :posts, :class_name => 'Forem::Post'
  has_many :views, :class_name => 'Forem::View'

  def to_s
    username
  end
end
