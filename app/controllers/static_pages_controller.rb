class StaticPagesController < ApplicationController
  def home
    @recipes = Recipe.limit(3).order('created_at desc')
  end

  def help
  end

  def about
  end

  def contact
  end
end
