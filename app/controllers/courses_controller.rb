class CoursesController < ApplicationController
def index
    @courses = Course.all
end

def show
    @course = Course.find(params[:id])
    
end

def new
    @course = Course.new
end

def create
    @course = Course.new(course_params)

    @course.save
    redirect_to course_path(@course)
end

def edit
    @course = Course.find(params[:id])

end

def update
    @course = Course.find(params[:id])
    @course.update(course_params)
    redirect_to course_path(@course)

end

def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to course_path
end

private 

def course_params
    params.require(:course).permit(:name, :subject, :course_number)
end


end
