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
  erb :'static/user'
end