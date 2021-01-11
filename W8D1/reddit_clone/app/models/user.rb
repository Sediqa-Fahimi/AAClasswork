class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true
    validates :session_token, presence: true, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}
    validates :password_digest, presence:true
    attr_reader :password
    after_initialize :ensure_session_token

    def self.find_by_credentials(username, password)
        user = User.find_by(username: username)
        if user && user.is_password?(password)
            user
        else
            nil  
        end
    end
    def is_password?(pw)
        BCrypt::Password.new(self.password_digest).is_password?(pw)
    end
    def password=(pw)
        @password = pw
        self.password_digest = BCrypt::Password.create(pw)
    end
    def reset_session_token!
        self.session_token = SecureRandom::base64
        self.save!
        self.session_token
    end
    private
    def ensure_session_token
        self.session_token ||= SecureRandom::base64
    end
end
