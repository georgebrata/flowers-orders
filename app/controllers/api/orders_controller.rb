module Api
  class OrdersController < ApiController

    def index
      render json: Order.all
    end

    def create
      order = Order.new(order_params)
      if order.save
        render :json => order
      else
        render :json => { :errors => order.errors.messages }, :status => 422
      end
    end

    def update
      order = Order.find(params[:id])
      if order.update(order_params)
        render :json => order
      else
        render :json => { :errors => order.errors.messages }, :status => 422
      end
    end

    def destroy
      order = Order.find(params[:id])
      order.destroy
    end

    private

    def order_params
      params.require(:order).permit(:name, :email, :manager)
    end
  end
end
