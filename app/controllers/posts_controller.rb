class PostsController < ApplicationController

  def index
    @posts = Post.all
    @places = Place.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post["title"] = params["post"]["title"]
    @post["date_created"] = params["post"]["date_created"]
    @post["description"] = params["post"]["description"]
    @post.save
    redirect_to "/posts"
  end

end