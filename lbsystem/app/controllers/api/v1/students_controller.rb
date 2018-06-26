class Api::V1::StudentsController < ApplicationController

  def index
    student = Student.first
    student = JSONAPI::Serializer.serialize(student)
    render json:{students: student}
  end
end