class Actor < ActiveRecord::Base
  
  has_many :characters
  has_many :shows, through: :characters
  
    def full_name
      binding.pry
      fullname = []
      fullname.push(self.first_name)
      fullname.push(self.last_name)
      fullname.join(" ")
    end
    
    def list_roles
       characters.collect {|char| "#{char.name} - #{char.show.name}"}
    end
  
end