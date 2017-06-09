class User < ApplicationRecord
	VALID_NAME_REGEX = /\A[a-z]+\z/i
	validates :user_forename, presence: true, length: {maximum: 35}, format: {with: VALID_NAME_REGEX}
	validates :user_surname, presence: true, length: {maximum: 35}, format: {with: VALID_NAME_REGEX}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :user_email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX}
	validates :username, presence: true, length: {maximum: 35}	
	validates :api_sk, presence: true, length: {maximum: 50}	
	validates :api_pk, presence: true, length: {maximum: 50}	
	
# validates_format_of :user_forename, :with => /\A[a-z]+\z/i
#	validates_format_of :user_surname, :with => /\A[a-z]+\z/i	
end
