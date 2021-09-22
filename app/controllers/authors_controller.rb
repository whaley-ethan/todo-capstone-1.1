class AuthorsController < ApplicationController
  before_action :set_author, only: [ :show, :update, :change_name]
  
  def show
  end

  def index
    @authors = Author.all
  end

  def change_name
  end

  def update
    @author.update(author_params)
    
    redirect_to @author
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name)
    end
end
