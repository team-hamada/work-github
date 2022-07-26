class Admin::GenresController < ApplicationController
  
  def index
    @genre = Genre.new
    @genres = Genre.all
  end

  def create
    @genre = Genre.create(genre_params)
    if @genre.save
      redirect_to edit_admin_genre_path(@genre.id)
    else
      render:index
    end
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    if @genre.update(genre_params)
      redirect_to admin_genres_path
    else
      render 'edit'
    end
  end
  
  # ここ追加！けど意味わかっていない！
  def search
    @genre = Genre.find_by(name: params[:keyword])
    items = @genre.items
    @sale_items = items.where(sales_status: 0)
    @items = @sale_items.page
    render :index
  end
   
  private

  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
