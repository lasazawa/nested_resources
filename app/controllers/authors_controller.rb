class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
    @author = Author.find(params[:id])
  end

  def update
    author = Author.find(params[:id])
    author.update(get_author_params)
    redirect_to authors_path
  end

  private
  def get_author_params
    params.require(:author).permit(:name)
  end
end
