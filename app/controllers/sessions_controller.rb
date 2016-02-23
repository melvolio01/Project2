get '/login' do
  @user = User.new
  erb :'sessions/new'
end

post '/login' do
  user = User.find_by_email_address(params[:user][:email_address])


  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.user_id
    flash[:success] = "Welcome!"
    redirect "/user/#{user.id}"
  else

    flash[:danger] = "Username or password incorrect"
    redirect "/login"
  end
end 

get '/logout' do
  session.clear
  redirect "/"
end