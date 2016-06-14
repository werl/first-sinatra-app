# Homepage (Root path)
get '/' do
  

  erb :index
end

get '/login' do
   
end

before do
  cookies[:page_views] ? cookies[:page_views] = cookies[:page_views].to_i + 1 : cookies[:page_views] = 1
end
