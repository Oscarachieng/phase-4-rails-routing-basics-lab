class StudentsController < ApplicationController
    def index
        @students = Student.all
        render json: @students
    end

    def grade 
        @grades = Student.order(grade: :desc)
        render json: @grades
    end

    def highest_grade 
        @highest = Student.order(grade: :desc).limit(1)
        render json: @highest
    end
end
