# Index
get '/landlords' do
  @landlords = Landlord.all
  erb :'landlords/index'
end

# New
get '/landlords/new' do
  # authorize!
  @landlord = Landlord.new
  erb :'landlords/new'
end



# Create
post '/landlords' do
  # authorize!
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
  if @landlord
    erb :'landlords/show'
  else
    redirect "/landlords"
  end
end

# Edit
get "/landlords/:id/edit" do
  # authorize!
  @landlord = Landlord.find(params[:id])
  erb :"landlords/edit"

# Update
put '/landlords/:id' do
  # authorize!
  @landlord = Landlord.find(params[:id])
  if @landlord.update(params[:landlord])
    redirect "/landlords/#{@landlord.id}"
  else
    erb :'landlords/show'
    end
  end  
end