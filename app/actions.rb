# Homepage (Root path)
get '/' do
  

  erb :index
end

get '/login' do
  erb :login  
end

post '/login' do
  "Hello World"
end

get '/create_account' do
  erb :create_account
end

post '/create_account' do
  "Hello World"
end

before do
end
