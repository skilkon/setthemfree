require 'sinatra'
require 'sinatra/reloader' if development?




get('/') do
 erb :main_page	
end	


get('/quiz_six')do
 erb :quiz_six
end 

post('/quiz_submission') do 
  if params[:babydolphin]== "Calf" && params[:train]== "food deprivation" && params[:captive]=="the united states"&& params[:miles]=="40 miles" && params[:ban]=="Bolivia" && params[:pay]=="USD 215"
   

    return redirect to('/quiz_six')

   else
   
   return redirect to('quiz_submission') 

  end
end
 





post('/quiz_submission')do
erb :quiz_submission
end


get('/quiz_submission')do
 
 erb :quiz_submission
end 







post('/contact') do
	puts params[:fname]
	puts params[:email]
	require 'pony'

    Pony.options = {
     :via => 'smtp',
     :via_options => {
    	:address => 'smtp.mailgun.org',
	    :port=> '587',
	    :enable_starttls_auto => true,
	    :authentication => :plain,
	    :user_name =>'postmaster@sandboxe6ddf673c0c24f8ba8af6b61e4b420b6.mailgun.org',
	    :password => '7c235f578f6119ad3617dabfd161b661'
      }	
    }
      message = {
	    :from => 'skilkon@gmail.com',
	    :to => params[:email],
	    :subject => 'Welcome ' + params[:fname] ,
	    :body => 'Thank you for signing up to our newsletter! :)'
      }

  Pony.mail(message)
redirect ('/newsletter_sub')
end	


get('/newsletter_sub') do
  erb :newsletter_sub
end  

