class Email < ApplicationRecord
  with_options presence: true do
    validates :name 
    validates :email, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i} 
    validates :title 
    validates :text
  end
end
