class BirdsController < ApplicationController
  def show
    return 'pong', status: :success
  end
end
