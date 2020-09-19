class Show < ActiveRecord::Base
  
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters
  
  def actors_list
  #binding.pry
  actors.collect {|name| "#{name.first_name} #{name.last_name}"}
  end
  
end