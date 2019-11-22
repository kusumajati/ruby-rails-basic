class User < ApplicationRecord
    validates :email, presence: true, allow_nil: false
    validates :password, presence: true, allow_nil: false
    has_secure_password

end
