class HomepageController < ApplicationController
  def get_servers
    servers=Metric.distinct(:server)
    render json: servers, status: 200, root: false
  end

  def get_server_dates
    dates=Metric.where(server: params[:server]).distinct(:date)
    render json: dates, status: 200, root: false
  end

  def get_server_metrics
    server=params[:server]
    date=params[:date]
    metrics_array=Metric.where(_id: "#{server}-#{date}").first.server_metrics

    @server_metrics={server: server,
                    date: date,
                    cpuMetrics: metrics_array[0]['cpu'],
                    memMetrics: metrics_array[1]['mem'],
                    diskMetrics: metrics_array[2]['disk'],
                    netInMetrics: metrics_array[3]['netIn'],
                    netOutMetrics: metrics_array[4]['netOut']}

    render 'server_metrics'
  end
end