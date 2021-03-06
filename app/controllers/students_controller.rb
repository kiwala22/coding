class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
    html = render_to_string(:layout => false , :action => "show.html.erb")
    pdf = PDFKit.new(html)
    #need a button to activate the pdf download
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @student }
      format.pdf {  send_data(pdf.to_pdf,  :filename => "#{@student.name}.pdf",
            :type => 'application/pdf', :disposition => 'inline') }
      end
  end
  def new
    @student = Student.new
  end
  def edit
  end
  def create
    @student = Student.new(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end
    def student_params
      params.require(:student).permit(:registration_number, :student_number, :name, :bit2207, :csc2200, :csc2209, :csc2210, :csc1209)
    end

end
