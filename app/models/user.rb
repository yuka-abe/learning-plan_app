class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable,:omniauthable, omniauth_providers: [:twitter, :google_oauth2]
         
         has_many :sns_credentials
end
