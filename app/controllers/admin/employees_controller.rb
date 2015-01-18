class Admin::EmployeesController < Admin::AdminController
  before_action :authenticate_admin!
  before_action :get_employee, only: [:show, :edit, :update]


  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render @employee
    end
  end

  def edit
  end

  def show
  end

  def update
    if @employee.update(employee_params)
      render @employee
    end
  end

  protected
  
  def employee_params
    params.require(:employee).permit(:name, :position)
  end

  def get_employee
    @employee = Employee.find(params[:id])
  end
end
