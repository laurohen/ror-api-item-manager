class ItemsController < ApplicationController

  def index
    begin
      @items = Item.page(params[:page] || 1).per(params[:per_page_item] || 10)

      @count = Item.count

      @data = {
        'message' => "Success",
        'total items' => @count,
        'data' => @items
      }
      render json:@data , status: 200
    rescue
      raise "No Posts Find"
    end
  end

  def show
    begin
      @item = Item.find(params[:id])
      if @item
        render json: {status: 'SUCCESS', message:'item detail', data:@item},status: :ok
      end
    rescue Exception => @e
        render json:{error: 'item not found'} , status: 404
    end
  end

  def create
    @item = Item.new(item_params)
    
    if @item.save
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    begin
      @item = Item.find(params[:id])
      @item.update(
        title: params[:title],
        description: params[:description],
        archived: params[:archived],
        readed: params[:readed],
        executed: params[:executed],
        status: params[:status]
      )
      render json: @item
    rescue Exception => @e
      render json: {status: 'ERROR', message:'Item not found'}, status: :ok
    end
  end

  def destroy
    begin
      @item = Item.find(params[:id])
      if @item
        @item.destroy
        render json: {status: 'SUCCESS', message:'Delete item ok'}, status: :ok
      end
    rescue Exception => @e
      render json: {status: 'ERROR', message:'Item not found'}, status: :ok
    end
  end

  def listforstatus
    @items = Item.where(status: params[:status])
    if @items
      render json: @items, status: 200
    end
  end

  private 
	def item_params
		params.require(:item).permit(:title,:description,:archived,:readed,:executed,:status)
	end

end
