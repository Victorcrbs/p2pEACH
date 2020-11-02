class Usuario < ApplicationRecord
  has_secure_password
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :nome, presence: true
  validates :snome, presence: true
  validates :fone, presence: true
end
