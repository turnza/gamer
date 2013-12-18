class Post1sController < ApplicationController
before_filter :authorise
def create
  @forum = Forum.find params[:forum_id]
   @post1 = @forum.post1s.create params[:post1]
   @post1.member_id = @current_member.id
   @post1.save

respond_to do |format|
format.html { redirect_to @forum }
     end
 end 
end
