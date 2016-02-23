get '/' do
  erb :'static/home'
end

get '/about' do
  erb :'static/about'
end

get '/search_landlords.erb' do
  erb :'static/search_landlords'
end

get '/search_properties.erb' do
  erb :'static/search_properties'
end

get'/user' do
  # @user = User.find(params[:id])
  # if @user.update(params[:user])
  #   redirect "statics/users/#{@user.id}"
  # else
  erb :'/static/user'
end