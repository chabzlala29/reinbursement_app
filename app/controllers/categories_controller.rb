class CategoriesController < ApplicationController
  before_action :authenticate_employee!
  before_action :get_category, only: [:show]

  def index
    @categories = Category.all
  end

  def show
  end

  protected

  def get_category
    @category = Category.find(params[:id])
  end
end
