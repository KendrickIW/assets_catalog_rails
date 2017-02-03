class User < ApplicationRecord
  after_initialize :set_role

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role

  def after_confirmation
    set_role
  end

  private

  def set_role
    if self.confirmed? && self.email.end_with?('@gmail.com')
      self.role = Role.find_or_create_by({name:'admin'})
    else
      self.role = Role.find_or_create_by({name:'regular'})
    end
  end
end
