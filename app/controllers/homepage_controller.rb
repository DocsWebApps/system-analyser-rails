class HomepageController < ApplicationController
  def get_servers
    @servers=Metric.distinct(:server)
    render json: @servers, status: 200, root: false
  end
end
