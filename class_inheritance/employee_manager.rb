class Employee
  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    @salary *= multiplier
  end

end

class Manager < Employee
  def initialize
    super(name, title, salary, boss)
    @employees = []
  end

  def assign_employees(employee)
    @employees << employee
  end

  def manager_bonus(multiplier)
    total = 0
    @employees.each do |employee|
      total += employee.salary
    end
    total *= multiplier
  end
end

