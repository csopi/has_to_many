class Entry < ActiveRecord::Base
	belongs_to :user
	validates :folder, presence: true
	validates :date, presence: true
	validates :theme, presence: true
	validates :spend_time, presence: true
	validates :user_id, presence: true
end
