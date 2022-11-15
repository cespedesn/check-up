class User < ApplicationRecord
    has_many :user_teams
    has_many :teams, through: :user_teams
    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :full_name, presence: true, uniqueness: true
end
