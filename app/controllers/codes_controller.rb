class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def show
    @code = Code.find params[:id]
  end
end
