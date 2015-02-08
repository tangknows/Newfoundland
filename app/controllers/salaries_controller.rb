class SalariesController < ApplicationController
  def index
    @salaries = Salary.all
  end

  def show
    @salary = Salary.find(param[:id])
  end

  def new
    @salary = Salary.new
  end

  def edit
    @salary = Salary.find(param[:id])
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
  end
end
