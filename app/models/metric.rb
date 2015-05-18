class Metric
  include Mongoid::Document
  field :_id, type: String
  field :server, type: String
  field :date, type: String
  field :server_metrics, type: Array

  validates_presence_of :server, :date, :server_metrics
end
