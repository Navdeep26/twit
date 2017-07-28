class TwitterController < ApplicationController
  layout 'application', except: [:search]
  before_action :common, only: [:index, :search]

  def index
  	
  end

  def search
  	render '_twit', layout: false
  end

  def common
  	query = params[:q].present? ? params[:q] : "amazon"
  	logger.info(query)
   	@results = CLIENT.search(query, :result_type => "recent").take(30)
  end

end



