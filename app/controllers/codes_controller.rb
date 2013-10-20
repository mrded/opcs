class CodesController < ApplicationController

  def index
    @codes = Code.search(params[:search])

    if params[:format] == 'json'
      render json: @codes,
        only: [:id, :name, :description, :value],
        methods: [:value]
    end

  end


  def show
    @code = Code.find params[:id]
  end
end
