class SalariesController < ApplicationController
  def index
    @salaries = Salary.all
  end

  def show
    @salary = Salary.find(params[:id])
  end

  def new
    @salary = Salary.new
  end

  def edit
    @salary = Salary.find(params[:id])
    if @salary.save
      @salary
    else
      flash[:error] = "Error in editing"
    end
  end

  def create
  @salary = Salary.new(params.require(:salary).permit(:amount))
    if @salary.save
      redirect_to @salary
    else
      flash[:error] = "Error in saving"
      render :new
    end
  end

  def update
    @salary = Salary.find(params[:id])
    if @salary.update_attributes(params.require(:salary).permit(:amount))
      redirect_to @salary
    else
      flash[:error] = "error in saving"
    end
  end

end
