class Payroll
  def update( changed_employee )
    puts("Cut a new check for #{changed_employee.name}!")
    puts("His salary is now #{changed_employee.salary}!")
  end
end

class Employee
  attr_reader :name, :title, :salary

  def initialize(name, title, salary, payroll)
    @name = name
    @title = title
    @salary = salary
    @payroll = payroll
  end

  def salary=(salary)
    @salary = salary
    @payroll.update(self)
  end

  def info
    puts name, title, salary
  end
end

payroll = Payroll.new
fred = Employee.new("Fred Flintstone", "Crane Operator", 3000, payroll)
fred.salary = 3500 #Giving Fred a raise
#fred.info
