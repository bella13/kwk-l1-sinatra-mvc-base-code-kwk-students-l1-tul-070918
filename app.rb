class IdeaBox < Sinatra::Base 
  not_found do 
    erb :error 
  end
  
  get '/' do
    erb :index
  end
  
  post '/' do
    # 1. Create an idea based on the form parameters
    idea = Idea.new 
    
    # 2. Store it 
    # 3. Send it back to the index page to see all ideas
    "Creating an IDEA"  

  end 
  
end