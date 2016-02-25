# New comment - to be added through the landlord pages of the site
get '/landlords/:id/comments/new' do
  authorize!
  landlord = Landlord.find(params[:id])
  @properties = landlord.properties
  erb :'comments/new'
  end

# Create
post '/landlords/:id/comments' do
  authorize!
  @comment = Comment.new(params[:comment])
  @comment.landlord_id = params[:id]
  @comment.user = current_user
  if @comment.save
    redirect "/landlords/#{params[:id]}"
  else
    erb :'comments/new'
  end  
end


# Delete
delete '/landlords:id/comments/:id'do
  authorize!
  @comment = Comment.find(params[:comment])
  @comment.destroy
  erb :'comments/delete'
end


