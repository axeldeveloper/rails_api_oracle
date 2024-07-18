class Api::V1::EmployeesController < ApplicationController

    before_action :set_employees, only: [:show, :update, :destroy]

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

    # GET /api/v1/users
    def index
        @employees = Employee.all
        # render "app/views/api/v1/employees/index.json.jbuilder"
        # render 'employees/index', formats: :json, handlers: :jbuilder
    end

    # GET /api/v1/users/:id
    def show; end

    # POST /api/v1/users
    def create
        @employee = Employee.new(employee_params)

        if @employee.save
            render 'show.json.jbuilder', status: :created
        else
            render json: @employee.errors, status: :unprocessable_entity
        end
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_employees
        @employee = Employee.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def employee_params
        params.require(:employee).permit(
            :first_name,
            :last_name,
            :email,
            :phone_number,
            :hire_date,
            :job_id,
            :salary,
            :commission_pct,
            :manager_id,
            :department_id
            )
    end
end
