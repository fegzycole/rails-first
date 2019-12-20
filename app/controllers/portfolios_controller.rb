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

  def update
    @portfolio = Portfolio.find(params[:id])
    respond_to do |format|
      if @portfolio.update(portfolio_params)
        format.html { redirect_to portfolios_url, notice: 'Portfolio updated successfully'}
      else
        format.html { render :edit }
      end
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end
end
