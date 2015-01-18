class Admin::EmployeesController < AdminController
  def index
    authenticate_admin!
    @employees = Employee.all
  end
end
