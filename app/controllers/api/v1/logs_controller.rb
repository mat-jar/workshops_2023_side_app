class Api::V1::LogsController < ApplicationController
  def index
    logs = Log.all
    render json: logs
  end

  def user_logs
    user_id = params[:id]
    logs = Log.where(user_id: user_id)
    render json: logs
  end
end
