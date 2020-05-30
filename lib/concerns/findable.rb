module FindByName
    module ClassMethods

        def find_by_name(name)
            self.all.detect{|element| element.name == name}
        end
    end

end