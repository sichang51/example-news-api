class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=bitcoin&apiKey=#{Rails.application.credentials.news_api[:api_key]}")

    news = JSON.parse(response.body)
    render json: news
  end
end
