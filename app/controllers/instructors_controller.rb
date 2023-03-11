class InstructorsController < ApplicationController

    def index
        instructors = Instructor.all
        render json: instructors
    end

    def create
    instructor = Instructor.create(instructor_params)
    render json: instructor
    end

    def update
    instructor = Instructor.find(params[:id])
    instructor.update(instructor_params)
    render json: instructor
    end

    def destroy
    instructor = Instructor.find(params[:id])
    instructor.destroy
    end

    private

    def instructor_params
        params.permit(:name)
    end
end
