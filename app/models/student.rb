class Student < ApplicationRecord
	validates :registration_number, :uniqueness => true, :presence => true
	validates :student_number, :uniqueness => true, :presence => true
	validates :name, :presence => true
	#validates :results, :presence => true
	#mount_uploader :results, ResultsUploader
	validates :bit2207, :presence => true
	validates :csc2200, :presence => true
	validates :csc2209, :presence => true
	validates :csc2210, :presence => true
	validates :csc1209, :presence => true
end
