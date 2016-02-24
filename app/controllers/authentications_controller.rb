get '/register' do
  @user = User.new
  erb :'authentications/new'
end

post '/register' do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    flash[:success] = "Thanks for registering!"
    redirect "/users/#{@user.id}"
  else
    erb :'authentications/new'
  end
end

# /#{user.id}