class Public::ItemsController < ApplicationController
  before_action :authenticate_customer!, except: [:index]
  
  def index
    # @items = Items.page(params[:page]).per(8)
  end

  def show
    # @item = Item.find(params[:id])
  end
end
