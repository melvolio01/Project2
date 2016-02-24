# New comment - to be added through the landlord pages of the site
get '/landlords/:id/comments/new' do
  # authorize!
  @comment = Comment.new(params[:comment])
  erb :'comments/new'
  end

# Create
post '/landlords/:id/comments' do
  # authorize!
  @comment = Comment.new(params[:comment])
  if @comment.save
    @comment.user = current_user
    redirect "/landlords/:id"
  else
    erb :'comments/new'
  end  
end


# Delete
delete '/landlords:id/comments/:id'do
  # authorize!
  @comment = Comment.delete(params[:comment])
  erb :'comments/delete'
end


