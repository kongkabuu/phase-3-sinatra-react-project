class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/articles" do
    article = Article.all
    article.to_json(include: [:comments, :likes])
  end
  # POST /articles
  post "/articles" do
    article = Article.new(title: params[:title], content: params[:content])
    article.image = params[:image_path]
    article.image_path_will_change!
    article.save
    status 201
    article.to_json
  end

  # GET /articles/:id
  get "/articles/:id" do
    article = Article.find(params[:id])
    article.to_json
  end

  # GET /uploads/:filename
  get "/uploads/:filename" do |filename|
    send_file File.join(settings.public_folder, 'uploads', filename)
  end
  post "/likes/:id" do
    article = likes.find(params[:id])
    article.likes += 1
    article.save
    article.to_json
  end




  # POST /articles/:id/comments
  post "/articles/:id/comments" do
    article = Article.find(params[:id])
    comment = article.comments.create(content: params[:content])
    comment.to_json
  end

  # DELETE /articles/:id
  delete "/articles/:id" do
    article = Article.find(params[:id])
    article.destroy
    status 204
  end
end
