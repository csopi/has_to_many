class User < ActiveRecord::Base
	has_many :entries
	validates :name, presence: true
	validates :firm, presence: true
end
