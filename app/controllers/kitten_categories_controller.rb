class KittenCategoriesController < ApplicationController

  def new
    @kitten_category = KittenCategory.new
  end

  def create

    @kitten_category = KittenCategory.new(kitten_id: params[:id], category_id: params[:kitten_category][:category_id])

    if @kitten_category.save
      redirect_to root_path
    else
      render :new
    end
  end
end