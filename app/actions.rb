# Homepage (Root path)

get '/' do
  

  erb :index
end

get '/login' do
  erb :login  
end

post '/login' do
  user = User.find_by(email: params[:email])
  puts user.email
  if user.email == "12345"
    user.destroy
    user.save
  end
  if !user.nil? && user.password == params[:password]
    session[:user_id] = user.id
    redirect '/'
  else
    redirect '/login_error'
  end
end

get '/login_error' do
  erb :login_error
end

get '/create_account' do
  erb :create_account
end

post '/create_account' do
  if params[:email] && params[:display_name] && params[:password]
    user = User.new(params)
    user.password = params[:password]
    user.save
    redirect '/login'
  else
    redirect '/'
  end
end

before do
end
