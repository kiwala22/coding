class StudentPdf < Prawn::Document
	 def initialize(student, show)
	    super()
	    @student = stundent
	    @view = view
	   text "Student results"
	  end
end