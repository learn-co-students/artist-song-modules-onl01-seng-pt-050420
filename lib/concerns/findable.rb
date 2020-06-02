module Findable
    def find_by_name(name)
        self.all.select{|i| i.name == name}
    end
end