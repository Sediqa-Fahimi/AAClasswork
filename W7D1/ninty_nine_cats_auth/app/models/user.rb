class User < ApplicationRecord
    validates :user_name, :password_digest, :session_token, presence: true
    validates :session_token, :user_name, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true
    after_initialize :ensure_session_token

    attr_reader :password

    def ensure_session_token
        self.session_token ||= SecureRandom::urlsafe_base64
    end

    def reset_session_token!
        self.session_token = SecureRandom::urlsafe_base64
        self.save!
        self.session_token
    end
    

end
