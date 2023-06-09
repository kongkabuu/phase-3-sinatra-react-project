class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get "/articles" do
    article = Article.all
    article.to_json(include: :comments)
  end
end
