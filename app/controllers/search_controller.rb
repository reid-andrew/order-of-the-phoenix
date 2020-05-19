class SearchController < ApplicationController
  def index
    @hogwarts = HogwartsResults.new
  end



end
