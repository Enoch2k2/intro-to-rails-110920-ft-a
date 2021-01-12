class MoviesController < ApplicationController
  #before_action :find_move, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render :new
    end
  end


  private
    def movie_params
      params.require(:movie).permit(:title, :genre, :release_date)
    end
  #   def find_movie
  #     @movie = Movie.find_by_id(params[:id])
  #   end

end
