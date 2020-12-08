class Employee
    attr_reader :salary
    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end
    def bonus(multiplier)
        bonus = @salary * multiplier
        bonus
    end

end

class Manager < Employee
    attr_reader :my_employees, :salary
    def initialize(name, title, salary, boss)
        super(name, title, salary, boss)
        @my_employees = []
    end
    def bonus(multiplier)
        total_salary = 0
        @my_employees.each do |employee|
            total_salary += employee.salary
        end
        bonus = total_salary * multiplier
        bonus
    end

end
ned = Manager.new('Ned','founder', 1000000, nil)
darren = Manager.new('Darren','manager', 78000, ned)
shawna = Employee.new('Shawna','TA', 12000, darren)
david = Employee.new('David','TA', 10000, darren)
ned.my_employees.push(darren,shawna,david)
darren.my_employees.push(shawna,david)
p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000