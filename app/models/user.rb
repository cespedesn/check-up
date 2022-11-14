class User < ApplicationRecord
    has_one :team

    has_secure_password

    validates :email, presence: true, uniqueness: true
    validates :full_name, presence: true, uniqueness: true
end
