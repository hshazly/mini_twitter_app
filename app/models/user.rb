class User < ActiveRecord::Base
  has_many :posts, :dependent => :destroy

  #followings => ppl whom I follow (I am the owner of the relation)
  #followers => ppl who follow me
  
  #relationship => I follow ppl
  #inverse_relationship => ppl follow me

  has_many :relationships  
  has_many :followings, :through => :relationships
  has_many :inverse_relationships, :class_name => "Relationship", :foreign_key => "followings_id"
  has_many :followers, :through => :inverse_relationships, :source => :user

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
end
