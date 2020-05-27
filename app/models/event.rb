class Event < ApplicationRecord
    has_many :comment

    validates :name, :presence => true
    validates :event_date, :presence => true
    validates_format_of :org_email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
