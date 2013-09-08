require_dependency "ma_test/application_controller"

module MaTest
  class PostsController < ApplicationController
    def index
      @posts = MaTest::Post.scoped
    end
  
    def new
      @post = MaTest::Post.new()
    end
  
    def create
      @post = MaTest::Post.new(params[:post], :as => :role_new)
      if @post.save
        flash[:notice] = 'Saved!'
        redirect_to posts_path()
      end
    end
  
    def edit
      @post = MaTest::Post.find_by_id(params[:id])
    end
  
    def update
      @post = MaTest::Post.find_by_id(params[:id])
      if @post.update_attributes(params[:post], :as => :role_update)
        flash[:notice] = 'Updated!'
        redirect_to posts_path()
      end
    end
  end
end
