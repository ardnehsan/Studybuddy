class CardController < ApplicationController

  def new
    @card = Card.new
  end

  def create
    @cohort = Cohort.find_by id: params[:id]
    @card = Card.new params.require(:card).permit(:front, :back)
    @card.cohort_id = @cohort.id
      if @card.save
        redirect_to cards_path(id: @cohort.id)
      else
        render :new
      end
  end
  

end
