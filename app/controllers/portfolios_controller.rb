class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio.save
        format.html { redirect_to portfolios_url, notice: 'Your portfolio is now live!' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
