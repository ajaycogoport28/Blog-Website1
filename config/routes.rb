Rails.application.routes.draw do
  get 'user', to: 'user#userList'
  post 'user/addUser', to: 'user#addUser'
  delete 'user/deleteUser', to: 'user#deleteUser'
  get 'user/searchUser', to: 'user#searchUser'
  put 'user/editUser', to: 'user#editUser'

  get '/blog', to: 'blog#blogList'
  post '/blog/addBlog', to: 'blog#addBlog'
  get 'blog/searchBlog', to: 'blog#searchBlog'
  put 'blog/editBlog/:id', to: 'blog#editBlog'
  delete 'blog/deleteBlog', to: 'blog#deleteBlog'
  get 'blog/searchBlogById', to: 'blog#searchBlogById'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
