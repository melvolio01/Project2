get '/' do
  erb :'static/home'
end

get '/about' do
  erb :'static/about'
end

# get'/users' do
#   # @user = User.find(params[:id])
#   # if @user.update(params[:user])
#   #   redirect "statics/users/#{@user.id}"
#   # else
#   erb :'/static/user'
# end