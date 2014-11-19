class Post < ActiveRecord::Base
  belongs_to :user
  validates :body, :presence => true
  validates :title, :presence => true, :length => 5..100, :uniqueness => true
  #validates :id_user, presence: true
end
