class BirdController < ApplicationController
  rescue_from(Exception) { render(json: { head: 503 }) }
  def show
    render(json: { head: 200 })
  end
end
