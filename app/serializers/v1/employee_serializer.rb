module V1
    class EmployeeSerializer < ActiveModel::Serializer
        attributes :id, :name, :email, :designation, :manager
        # this method is used when we have association [many to one]-> manager employees have one manager
        def manager
            {
              id: object.manager.id,
              name: object.manager.name
            }
          end
    end
end