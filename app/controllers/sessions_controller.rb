class SessionsController < ApplicationController
 def create
   member = Member.find_by_name(params[:name])	
   if member && member.authenticate(params[:password]) 			
   session[:member_id] = member.id	
   else  	 		
	flash.now[:notice] = "Invalid name/password combination."      	
	render 'new'		           
    end
 end
def destroy
	if signed_in?
		session[:member_id] = nil					
		else
		flash[:notice] = "You need to sign in first"			
		end
	redirect_to signin_path
 end

def new

end
end

