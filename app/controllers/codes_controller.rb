class CodesController < ApplicationController
  def index
    render json: Code.all
  end

  def show
    @code = Code.find params[:id]
  end
end
