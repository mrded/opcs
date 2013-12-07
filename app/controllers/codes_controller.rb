class CodesController < ApplicationController

  def index
    respond_to do |format|
      format.json do
        @codes = params[:search].blank? ? [] : Code.search(params[:search]).last(30)
        render json: @codes,
               only: [:id, :name, :description]
      end
    end
  end

  def show
    @code = Code.find params[:id]
  end
end
