class SearchController < ApplicationController
  def index
    conn = Faraday.new("https://last-airbender-api.herokuapp.com")
    response = conn.get("/api/v1/characters?affiliation=FIRE+NATION&perPage=200")
    @members = JSON.parse(response.body, symbolize_names: true)
  end
end
