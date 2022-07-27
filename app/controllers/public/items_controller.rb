class Public::ItemsController < ApplicationController
  
  def index
    @sale_items = Item.where(is_active: 0)
    @items = @sale_items.page(params[:page]).per(8)
  end

  def show
    @item=Item.find(params[:id])
    @cart_item = CartItem.new
  end
  
  def index_by_genre
    @sale_items = Item.where(is_active: 0)
    @items = @sale_items.page(params[:page]).per(8)
    @genre = Genre.find(params[:id])
    @desserts = Item.new
  end
  
end