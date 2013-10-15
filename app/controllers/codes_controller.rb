class CodesController < ApplicationController
  def index
    @codes = Code.all
    render json: @codes if params[:format] == 'json'
  end

  def show
    @code = Code.find params[:id]
  end
end
