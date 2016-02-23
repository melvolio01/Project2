# Index
get '/properties' do
  @properties = Properties.all
  erb :'properties/index'
end

# New
get '/properties/new' do
  authorize!
  @property = Property.new
  erb :'properties/new'
end

# Create
post '/properties' do
  authorize!
  @property = Property.new(params[:property])
  if @property.save
    redirect "/properties"
  else
    erb :'properties/new'
  end  
end

# Show
get '/properties/:id' do
  @property = Property.find(params[:id])
  if @property
    erb :'properties/show'
  else
    redirect "/properties"
  end
end

# Edit
get "/properties/:id/edit" do
  authorize!
  @property = Property.find(params[:id])
  erb :"properties/edit"

# Update
put '/properties/:id' do
  authorize!
  @property = Property.find(params[:id])
  if @property.update(params[:property])
    redirect "/properties/#{@property.id}"
  else
    erb :'properties/show'
    end
  end  
end