class Role < ApplicationRecord
  has_many :users

  validates :name, inclusion: { in: %w(admin regular) }
end
