class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: true
    has_many :entries
end
