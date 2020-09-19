class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
    def full_name
      fullname = []
      fullname.push(self.first_name)
      fullname.push(self.last_name)
      fullname.join(" ")
    end
    
    def list_roles
      binding.pry
    end
  
end