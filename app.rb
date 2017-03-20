require 'sinatra'
require 'sinatra/reloader' if development?

get('/') do 
	puts @sum 
	erb :index	
end

get('/the/beverages/quiz') do
  

  erb :quiz 

 end 

get('/the/beverages/guide') do

erb :main_page
	
end	
get('/the/beverages/make/a/cocktail') do

erb :make_a_cocktail

end



post('/signup') do
	puts params[:name]
	puts params[:email]

end	