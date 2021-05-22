class Email < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :email, format:{with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "が間違っています"} 
    validates :title 
    validates :text
  end
end
