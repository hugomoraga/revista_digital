class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  enum role: [:periodista, :editor, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
      self.role ||= :user
  end
  def admin?
    self.role == "admin"
  end
end
