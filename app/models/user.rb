class User < ApplicationRecord
    has_many :user_words
    has_many :pronunciation_attempts
    has_many :quiz_results
    has_secure_password
end
