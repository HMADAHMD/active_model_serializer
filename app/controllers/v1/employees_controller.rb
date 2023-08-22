module V1
  class EmployeesController < ApplicationController
    def index
      employees = Employee.all.includes(:manager)
      render json: employees
      # we can explicitly define the serializer that we want to output but in our case as there is one employee serializer so we dont have to explicitly define it, syntax is as followL
      # render json: employees, each_serializer: EmployeeSerializer
    end

    def show
    end
  end
end