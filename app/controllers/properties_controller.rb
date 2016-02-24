# Index
get '/properties' do

  if params[:search] && !params[:search].empty?
  @properties = Property.where("address1 ILIKE :search OR address2 ILIKE :search OR postcode ILIKE :search OR borough ILIKE :search", {search: "%#{params[:search]}%"})
  else
    @properties = Property.all
    @landlords = Landlord.all
  end
  erb :'properties/index'
end

# New
get '/properties/new' do
  authorize!
  @property = Property.new
  @landlords = Landlord.all
  erb :'properties/new'
end

# Create
post '/properties/new' do
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
  @landlords = Landlord.all
  erb :"properties/edit"
end

put "/properties/:id" do
 authorize!
  @property = Property.find(params[:id])
  if @property.update(params[:property])
    redirect "/properties/#{@property.id}"
    else
      erb :'properties/show'
      end
  end

# put "/landlords/:id" do
#   authorize!
#   @landlord = Landlord.find(params[:id])
#   if @landlord.update(params[:landlord])
#     redirect "/landlords/#{@landlord.id}"
#   else
#     erb :'landlords/show'
#   end
# end  



# Delete
delete "/properties/:id/delete" do
  authorize!
  @property = Property.find(params[:id])
  @property.destroy  
  redirect "/properties"
  end