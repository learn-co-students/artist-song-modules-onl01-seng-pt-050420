module Memorable 
    module ClassMethods 
        def reset_all
            self.all.clear
        end

#The self keyword is omitted when defining class methods inside modules.
        
        def count
            self.all.count
        end
    end
    
    module InstanceMethods
        def initialize 
            self.class.all << self
        end
    end
end 