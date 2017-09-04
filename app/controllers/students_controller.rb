class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student =Student.new(params[:student])
    end

  def create
        @student = Student.new
         @student.first_name = params[:first_name]
         @student.last_name = params[:last_name]
         @student.save
         redirect_to students_path(@student) #redirect to the show page for this new student
         #redirect_to students_path to go to the index page
  end

end
