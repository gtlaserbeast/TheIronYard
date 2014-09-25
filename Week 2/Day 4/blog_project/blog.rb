require 'sinatra'
require 'data_mapper'
require 'dm-core'
require 'dm-timestamps'

DataMapper.setup(
  :default,
  'mysql://root@localhost/blog'
)

class Post
  include DataMapper::Resource
  property :id, Serial
  property :author, String
  property :subject, String
  property :author_email, String
  property :content, Text
  property :created_at, Time
  property :created_on, Date
  property :updated_at, Time
  property :updated_on, Date
end

DataMapper.finalize.auto_upgrade!

get '/' do
  @posts = Post.all
  erb :index, layout: :blog_layout
end

get '/create_post' do
  erb :create_post, layout: :blog_layout
end

post '/create_post' do
  @post = Post.create params[:post]
  redirect to('/')
end

get '/display_post/:id' do
  @post = Post.get params[:id]
  erb :display_post, layout: :blog_layout
end

get '/edit_post/:id' do
  @post = Post.get params[:id]
  erb :edit_post, layout: :blog_layout
end

put '/edit_post/:id' do
  @post = Post.get params[:id]
  @post.update params[:post]
  redirect to("/")
end

delete '/delete_post/:id' do
  @post = Post.get params[:id]
  @post.destroy
  redirect to("/")
end