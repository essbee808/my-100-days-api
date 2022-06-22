class User < ApplicationRecord
    validates :username, uniqueness: true
    validates :name, :username, :password presence: true

    has_secure_password
    has_many :entries
end
