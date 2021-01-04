class User < ApplicationRecord
    validates :user_name, :password_digest, :session_token, presence: true
    validates :session_token, :user_name, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true
    after_initialize :ensure_session_token

    attr_reader :password

    def self.find_by_credentials(user_name, password)
        user = User.find_by( user_name: user_name )

        if user && user.is_password?(password)
            user
        else
            nil
        end
    end

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end
    
    def password=(password)
        self.password_digest = BCrypt::Password.create(password)
        @password = passsword
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

end
