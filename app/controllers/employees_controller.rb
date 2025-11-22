class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  # 🟩 GET /employees — LIST PAGE + SEARCH + FILTER
  def index
    @departments = Department.all   # 🟩 Needed for filter dropdown

    @employees = Employee.all       # 🟩 Base query

    # 🟩 SEARCH BY NAME or EMAIL
    if params[:search].present?
      @employees = @employees.where(
        "first_name LIKE ? OR last_name LIKE ? OR email LIKE ?",
        "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%"
      )
    end

    # 🟩 FILTER BY DEPARTMENT
    if params[:department_id].present?
      @employees = @employees.where(department_id: params[:department_id])
    end
  end



  # GET /employees/1
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
    @departments = Department.all
  end

  # GET /employees/1/edit
  def edit
    @departments = Department.all
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)
    @departments = Department.all

    if @employee.save
      redirect_to @employee, notice: "Employee created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employees/1
  def update
    @departments = Department.all

    if @employee.update(employee_params)
      redirect_to @employee, notice: "Employee updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /employees/1
  def destroy
    @employee.destroy
    redirect_to employees_path, notice: "Employee deleted successfully."
  end

  private

  # Set employee for show/edit/update/delete
  def set_employee
    @employee = Employee.find(params[:id])
  end

  # Allow safe fields
  def employee_params
    params.require(:employee).permit(
      :first_name, 
      :last_name, 
      :email, 
      :salary, 
      :department_id
    )
  end
end
