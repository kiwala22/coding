class StudentPdf < Prawn::Document
	 def initialize(student, view)
	    super()
	    @student = student
	    @view = view
	   text "Student results"
	  end
end