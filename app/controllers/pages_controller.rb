class PagesController < ApplicationController
  def index
  	@girls = Girl.all
  	@girls = @girls.sort_by{|e| -e.rank_sum}

  end

end
