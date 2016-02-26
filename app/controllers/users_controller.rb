# New
get '/users/new' do
  authorize!
  @user = User.new
  erb :'users/new'
end

# Create
post '/users' do
  authorize!
  @user = User.new(params[:user])
  if @user.save
    redirect "/users"
  else
    erb :'users/new'
  end  
end

# Show
get "/users/:id" do
  authorize!
  @user = User.find(params[:id])
  if @user
    erb :'users/show'
  else
    redirect "/"
  end
end

# Edit
get "/users/:id/edit" do
  authorize!
  @user = User.find(params[:id])
  erb :"users/edit"
  end

# Update
put "/users/:id" do
  authorize!
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :'users/show'
    end
  end  
