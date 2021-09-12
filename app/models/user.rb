class User < ApplicationRecord
    has_many :messages
    validates :username , presence:true ,uniqueness: { case_sensitive: false }, length: {minimum: 6, maximum: 30}
    has_secure_password
end
