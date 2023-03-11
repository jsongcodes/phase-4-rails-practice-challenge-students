class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def create
        student = Student.create(student_params)
        render json: student.instructor
    end

    def update
        student = Student.find(params[:id])
        render json: student.instructor
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
    end

    private

    def student_params
        params.permit(:name, :age, :major, :instructor_id)
    end
end
