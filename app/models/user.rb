class User < ApplicationRecord
    has_many :entries
    validates :name, uniqueness: true
end
