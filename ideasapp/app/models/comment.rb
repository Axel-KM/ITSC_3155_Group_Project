class Comment < ApplicationRecord
    belongs_to :idea
    validates :commenter, presence: true, length: {minimum: 5, maximum: 30}
    validates :body, presence: true, length: {minimum: 10}
end
