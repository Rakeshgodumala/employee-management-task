class DepartmentsController < ApplicationController
  before_action :set_department, only: %i[show edit update destroy]

  # GET /departments
  def index
    @departments = Department.all
  end

  # GET /departments/1
  def show
    @employees = @department.employees
  end

  # GET /departments/new
  def new
    @department = Department.new
  end

  # GET /departments/1/edit
  def edit
  end

  # POST /departments
  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to @department, notice: "Department created successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /departments/1
  def update
    if @department.update(department_params)
      redirect_to @department, notice: "Department updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /departments/1
  def destroy
    @department.destroy
    redirect_to departments_path, notice: "Department deleted successfully."
  end

  private

  # Set department for show, edit, update, destroy
  def set_department
    @department = Department.find(params[:id])
  end

  # Allow safe fields
  def department_params
    params.require(:department).permit(:name, :budget)
  end
end
