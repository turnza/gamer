class PostsController < ApplicationController
	before_filter :authorise
def create
@result1 = Result1.find params[:result1_id]
@post = @result1.posts.create params[:post]
@post.member_id = @current_member.id
@post.save

respond_to do |format|
format.html { redirect_to @result1 }
     end
 end 
end

