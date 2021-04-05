class SearchController < ApplicationController
  def index
    nation = params[:nation].upcase.gsub("_", "+")

    conn = Faraday.new("https://last-airbender-api.herokuapp.com")

    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=200")
    
    @members = JSON.parse(response.body, symbolize_names: true)
  end
end
