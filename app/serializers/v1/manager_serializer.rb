module V1
    class ManagerSerializer < ActiveModel::Serializer
        attributes :id, :name, :employees
        #we use this method, when we have association (one-to-many) -> manager has multiple emplyees
        def employees
            object.employees.map do |employee|
                {
                    id: employee.id,
                    name: employee.name,
                    email: employee.email,
                    designation: employee.designation,
                }
            end
        end
    end
end
  