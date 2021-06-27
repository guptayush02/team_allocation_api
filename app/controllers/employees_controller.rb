class EmployeesController < ApplicationController
  def index
    employee = Employee.first
    render_result(employee)
  end

  private

  def render_result(result)
    if result
      render json: { message: 'Employee fount successfully', value: result }
    else
      render json: { message: 'Employee not found' }, status: 404
    end
  end
end
