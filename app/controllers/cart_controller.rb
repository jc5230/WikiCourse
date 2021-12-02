class CartController < ApplicationController
  def show
    @courses = Course.all
  end
end
