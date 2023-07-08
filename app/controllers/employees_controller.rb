class EmployeesController < ApplicationController
  before_action :set_employee, except: %w( index create new)

  def index 
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create 
    @employee = Employee.new(params_employee)
    if @employee.save
      flash[:notice] = "Employee created"
      redirect_to employees_path
    else 
      flash[:alert] = "#{@employee.errors.full_messages.join("\n")}"
    end
  end

  def edit 
  end
  
  def update 
    if @employee.update(params_employee)
      flash[:notice] = "Employee updated"
      redirect_to employees_path
    else 
      flash[:alert] = "#{@employee.errors.full_messages.join("\n")}"
    end
  end

  def destroy
    if @employee.destroy
      flash[:notice] = "Employee deleted"
      redirect_to employees_path
    else 
      flash[:alert] = "#{@employee.errors.full_messages.join("\n")}"
    end
  end

  private 

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def params_employee
    params.require(:employee).permit(:first_name, :last_name, :email, :designation, :department_id)
  end

end
