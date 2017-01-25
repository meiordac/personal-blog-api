class User < ApplicationRecord
   has_secure_password
   validates :email, uniqueness: true
   validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
   validates :name, presence: true

   has_many :comments, dependent: :destroy
   has_many :posts, dependent: :destroy
end
