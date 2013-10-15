class CodesController < ApplicationController
  def index
    if params[:search]
      @codes = Code.find(:all, conditions: ['code LIKE ?', "%#{params[:search]}%"])
    else
      @codes = Code.all
    end

    render json: @codes if params[:format] == 'json'
  end

  def show
    @code = Code.find params[:id]
  end
end
