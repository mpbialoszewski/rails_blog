class PostsController < ApplicationController
#Home section
def index
    @posts = Post.all
end
#Display 
def show
    @post = Post.find(params[:id])
end
#New post 
def new
    @post = Post.new
end

#Process the creation of new post
def create
    @post = Post.new(post_params)

    if@post.save
    redirect_to @post
    else 
        render'new'
    end
end
#Edit the post 
def edit 
    @post = Post.find(params[:id])
end

def update
    @post = Post.find(params[:id])

    if(@post.update(post_params))
    redirect_to @post
    else 
        render'edit', :notice=> 'Your post has been updated'
    end
end
#Delete post 

def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => 'Your post has been deleted succesfully'
end 

private def post_params
    params.require(:post).permit(:title, :body)
end

end