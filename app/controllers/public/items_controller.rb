class Public::ItemsController < ApplicationController
  before_action :authenticate_customer!, except: [:index]
  def index
  end

  def show
  end
end
