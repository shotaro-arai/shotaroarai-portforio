class Email < ApplicationRecord
  validates :name, :email, :title, :text, presence: true
end
