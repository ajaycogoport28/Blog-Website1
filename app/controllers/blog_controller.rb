class BlogController < ApplicationController
  skip_before_action :verify_authenticity_token
  def blogList
    data = Blog.all
    render json: data
  end

  def addBlog
    data = Blog.new({
      "blog_id" => params[:blog_id],
      "blog_title" => params[:blog_title],
      "blog_desc" => params[:blog_desc],
      "blog_img" => params[:blog_img],
      # "user_id" => params[:user_id]
    })
    data.save
    render json: data
   
  end

  def searchBlog
    if(params[:blog_title] != '')
      data = Blog.where("blog_title LIKE?", "%" + params[:blog_title] + "%")
    else
      data = Blog.all
    end
    
    render json: data
  end

  def searchBlogById
    if(params[:id] != '')
      data = Blog.where("id LIKE?", "%" + params[:id] + "%")
    else
      data = Blog.all
    end
    
    render json: data
  end

  

  def editBlog
    data = Blog.find_by(id: params[:id])
    data.update(
    "blog_title" => params[:blog_title],
    "blog_desc" => params[:blog_desc],
    "blog_img" => params[:blog_img]
    )
    render json: data
  end

  def deleteBlog
    data = Blog.find_by(blog_id: params[:blog_id])
    data.destroy
    data.save
    render json: {"deleted": "successfully"}
  end

end

