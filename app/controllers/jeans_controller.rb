class JeansController < ApplicationController

  def new
    @jeans = Jeans.new
  end

  def index
    @user_jeans = current_user.jeans.order(id: :desc)
    @today = Date.today
  end

  def create
    @jeans = Jeans.new(jeans_params)
    if @jeans.save
      redirect_to my_page_jeans_path
    else
      render :new
    end
  end

  def show
    @jeans = Jeans.find(params[:id])
    @today = Date.today
  end

  def update
    @jeans = Jeans.find(params[:id])
    if @jeans.update(jeans_params)
      redirect_to my_page_jeans_path
    else
      render :show
    end
  end

  private
    def jeans_params
       params.require(:jeans).permit(:name, :user_id, :brand_id, :lot_id, :year_id, :number_of_laundry, :date_of_purchase, :jeans_image)
    end
end
