class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
		  :fido_usf_registerable, :fido_usf_authenticatable
		  
  attr_accessor :email, :password, :password_confirmation
  
  has_many :articles
end
