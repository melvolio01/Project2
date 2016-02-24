# Index
get '/landlords' do
 if params[:search] && !params[:search].empty?
  @landlords = Landlord.where("name ILIKE :search OR borough ILIKE :search", {search: "%#{params[:search]}%"})
  else
    @landlords = Landlord.all
  end
  erb :'landlords/index'
end

# New
get '/landlords/new' do
  authorize!
  @landlord = Landlord.new
  erb :'landlords/new'
end


# Create
post '/landlords/new' do
  authorize!
  @landlord = Landlord.new(params[:landlord])
  if @landlord.save
    redirect "/landlords"
  else
    erb :'landlords/new'
  end  
end

# Show
get '/landlords/:id' do
  @landlord = Landlord.find(params[:id])
  @comments = @landlord.comments
  @properties = @landlord.properties

  if @landlord
    erb :'landlords/show'
  else
    redirect "/landlords"
  end
end

# Edit
get "/landlords/:id/edit" do
  authorize!
  @landlord = Landlord.find(params[:id])
  erb :"landlords/edit"
end

# Update
post "/landlords/:id" do
  authorize!
  @landlord = Landlord.find(params[:id])
  if @landlord.update(params[:landlord])
    redirect "/landlords/#{@landlord.id}"
  else
    erb :'landlords/show'
    end
  end  

# Delete
delete "/landlords/:id/delete" do
  authorize!
  @landlord = Landlord.find(params[:id])
  @landlord.destroy  
  redirect "/landlords"
end
