class Blogdb < ApplicationRecord
    validates :author, presence: true
    validates :title, length: { maximum: 80 }
    validates :category, inclusion: { in: %w(travel food music kids tech) }
    validates :content, length: { maximum: 5000 }
    validates :imagelink, presence: true 
end