module Findable
    def find_by_name(name)
        search_data = all
        search_data.detect{|a| a.name == name}
      end
end