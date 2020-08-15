module Findable 
    module ClassMethods

        def find_by_name(name)
            self.all.find(&:name)
        end 
    end 
end 