class TwitterController < ApplicationController
  
  def index

  	query = params[:search].present? ? params[:search] : "#amazon"

  	logger.info("query")

   	@results = CLIENT.search(query, :result_type => "recent").take(30)
   	#render json:results
  end

end
