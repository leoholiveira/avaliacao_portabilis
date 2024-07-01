class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable, :recoverable,
         :validatable, :jwt_authenticatable, jwt_revocation_strategy: self

  enum role: { user: 0, admin: 1 }
  validates :name, :email, :role, presence: true

  # Callbacks para configurar defaults
  before_create :set_default_role

  private

  def set_default_role
    self.role ||= :user
    self.active = true
  end
end
