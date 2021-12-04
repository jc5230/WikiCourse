class CartController < ApplicationController
  def show
    @courses = Course.all
  end

  def select

  end
end
