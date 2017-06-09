class Client < ApplicationRecord
	validates :registration_number, :uniqueness => true, :presence => true
	validates :course, :presence => true
	validates :name, :presence => true
	validates :results, :presence => true
	mount_uploader :results, ResultsUploader
end
