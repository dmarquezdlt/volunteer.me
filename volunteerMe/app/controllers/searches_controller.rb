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
    search_queries = [@search.entry, @search.commitment_type, @search.date, @search.time_start, @search.state].delete_if { |s| s == nil}
    @matches = PgSearch.multisearch(search_queries).paginate(page: params[:page], per_page: 5)
  end

  private
    def search_params
      params.require(:search).permit(:entry, :date, :time_start, :commitment_type, :state)
    end
end
