class Manager < Employee
    def initialize
        @employees_managed = []
    end

    def bonus(multiplier)
        total = 0
        self.employees_managed.each do |employee|
            total += employee.salary
        end
        total * multiplier
    end
    
    def add_employee
        
    end 
end 

