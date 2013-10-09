class CodesController < ApplicationController
  def index
    @codes = Code.all
  end

  def show
    @code = Code.find params[:id]
  end

  def new
    @code = Code.new
  end

  def create
    @code = Code.create! params[:code]

    flash[:notice] = "#{@code.code} was successfully created."
    redirect_to code_path(@code)
  end

  def edit
    @code = Code.find params[:id]
  end

  def update
    @code = Code.find params[:id]

    if @code.update_attributes(params[:code])
      flash[:notice] = "#{@code.code} was successfully updated."
      redirect_to code_path(@code)
    else
      render(action: 'edit')
    end

  end

  def destroy
    @code = Code.find params[:id]
    @code.destroy
    flash[:notice] = "#{@code.code} deleted."
    redirect_to code_path
  end
end
