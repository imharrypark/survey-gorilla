class User < ActiveRecord::Base
  has_secure_password

  has_many :survey_users
  has_many :surveys_taken, through: :survey_users, class_name: "Survey", source: :user

  has_many :choice_users
  has_many :choices, through: :choice_users, class_name: "Choice", source: :choice

  has_many :surveys_created, class_name: "Survey", foreign_key: :user_id

  validates :name, uniqueness: true
end