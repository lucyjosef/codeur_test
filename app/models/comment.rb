class Comment < ApplicationRecord
    belongs_to :event

    validates :author, :presence => true
    validates :message, :presence => true
end
