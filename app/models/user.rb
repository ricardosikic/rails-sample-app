class User < ApplicationRecord
    has_secure_password
    
    has_many :posts
    has_many :comments
    has_one :information

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end


