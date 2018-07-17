class Idea 
  def initialize(title, description)
  end 
  
  require 'yaml/store'
  def save 
    database.transaction do |db|
      db['ideas'] ||=[]
      db['ideas'] << {title: 'diet', description: 'pizza all the time'} 
    end
  end


def database
  @database ||= YAML::Store.new "ideabox"
 end 
end 