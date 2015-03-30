class SearchesController < ApplicationController
  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)

    @search.save
    redirect_to @search
  end

  def show
    @search = Search.find(params[:id])
    @matches = PgSearch.multisearch(@search.entry).paginate(page: params[:page], per_page: 2)
  end

  private
    def search_params
      params.require(:search).permit(:entry)
    end
end
