class PagesController < ApplicationController

 def home
  @post=Post.all

  render "home"
 end

 def about
  render "about"
 end

 def add
  @post=Post.new
  @post.title =params[:title]
  @post.description=params[:description]
  @post.save



    redirect_to :root
 end

 def delete
   @post=Post.find(params[:id])
   @post.destroy
   @post=Post.all
   render "home"
 end
 def search
 @query=params[:query]
 @post =Post.where("posts.title LIKE ?",["%#{@query}%"])
 render "home"
 end
 def edit
  @post=Post.find(params[:id])
  @id=params[:id]
  @title=@post.title
  @description=@post.description
  render "edit"

 end
 def editform
  #render json: params
  @post =Post.find(params[:id])
  @post.title=params[:title]
  @post.description=params[:description]
  @post.save

  redirect_to :root
 end
end
