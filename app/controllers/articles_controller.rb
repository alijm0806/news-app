class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search]}&from=2022-07-15&sortBy=publishedAt&apiKey=#{Rails.application.credentials.news_key_api}&language=en")
    render json: response.as_json
  end
end
