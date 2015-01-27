get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end



get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  # erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  input = params[:input]
  if input == "grass"
    @reply = "Grass is always greener at the other side."
  else
    @reply = "ich bin programmierer. "
  end
  erb :post_cool_url
  # redirect to("/cool_url/#{input_url}")
end


post '/finished' do
  puts "[LOG] params: #{params.inspect}"
  erb :finished
end

# get '/cool_url/:grass' do
#   "Grass is always greener at the other side."
#   # erb :post_cool_url
# end
