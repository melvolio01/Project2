# Show
get '/users' do
  authorize!
  @user = User.find(params[:id])
  if @user
    erb :'users/show'
  else
    redirect "/users"
  end
end

# Edit
get "/users/:id/edit" do
  authorize!
  @user = User.find(params[:id])
  erb :"users/edit"

# Update
put '/users/:id' do
  authorize!
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    erb :'users/show'
    end
  end  
end
