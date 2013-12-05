class CodesController < ApplicationController

  def index
    @codes = Code.search(params[:search])

    respond_to do |format|
      format.html
      format.json do
        render json: @codes,
               only: [:id, :name, :description, :value],
               methods: [:value]
      end
    end
  end

  def show
    @code = Code.find params[:id]
  end
end
