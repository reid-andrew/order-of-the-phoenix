class SearchController < ApplicationController
  def index
    @hogwarts = HogwartsResults.new(search_params[:house])
  end

  private

  def search_params
    params.permit(:house)
  end

end
