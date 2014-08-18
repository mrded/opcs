class CodesController < ApplicationController

  def index
    render json: params[:search].blank? ? [] : Code.search(params[:search]).last(30),
           only: [:id, :name, :description]
  end

  def show
    render json: code, only: [:id, :name, :description]
  end

  private

  def code
    @code ||= Code.find(params[:id]) if params[:id]
  end
end
