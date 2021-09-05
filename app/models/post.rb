class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :content, length: { minimum: 10}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {:in => ["Non-fiction", "Fiction"]}
    validates_with PostValidator
    
end
