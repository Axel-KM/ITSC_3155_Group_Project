class Article < ApplicationRecord
    has_many :comments #defines relationship type b/w comments/articles
    
    #presence: true, title can't be empty
    #length: {minimum: 5} atleast 5 characters
    validates :title, presence: true, length: { minimum: 5 }
    
    #presence: true, title can't be empty
    #length: {minimum: 0} atleast 10 characters
    validates :text, presence: true, length: { minimum: 10 }
end

