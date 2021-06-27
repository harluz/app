# frozen_string_literal: true

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  # VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z\d])[a-z\d]+\z/i.freeze

  # validates :nickname, presence: true, length: { maximum: 20 }
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 7 }, format: { with: VALID_PASSWORD_REGEX }
  validates :password_confirmation, presence: true, length: { minimum: 7 }, format: { with: VALID_PASSWORD_REGEX }

  include DeviseTokenAuth::Concerns::User
end
