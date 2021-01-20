class User < ApplicationRecord
    has_many :raffles 
    has_many :shoes, through: :raffles
    has_secure_password
    validates :email, uniqueness: true, presence: true
    

    def self.find_or_create_from_auth_hash(auth_hash)
      @user = User.find_by(email: auth_hash.uid)
      
      if @user
        @user

      else
        @user = User.create(email: auth_hash.uid, password: SecureRandom.hex)
      end
    end    
    
end
