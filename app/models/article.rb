class Article < ApplicationRecord
  belongs_to :user
  include Visible


  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
