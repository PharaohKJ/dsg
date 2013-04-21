class MtbCardsController < ApplicationController
  # GET /mtb_cards
  # GET /mtb_cards.json
  def index
    @mtb_cards = MtbCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtb_cards }
    end
  end

  # GET /mtb_cards/1
  # GET /mtb_cards/1.json
  def show
    @mtb_card = MtbCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtb_card }
    end
  end

  # GET /mtb_cards/new
  # GET /mtb_cards/new.json
  def new
    @mtb_card = MtbCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtb_card }
    end
  end

  # GET /mtb_cards/1/edit
  def edit
    @mtb_card = MtbCard.find(params[:id])
  end

  # POST /mtb_cards
  # POST /mtb_cards.json
  def create
    @mtb_card = MtbCard.new(params[:mtb_card])

    respond_to do |format|
      if @mtb_card.save
        format.html { redirect_to @mtb_card, notice: 'Mtb card was successfully created.' }
        format.json { render json: @mtb_card, status: :created, location: @mtb_card }
      else
        format.html { render action: "new" }
        format.json { render json: @mtb_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtb_cards/1
  # PUT /mtb_cards/1.json
  def update
    @mtb_card = MtbCard.find(params[:id])

    respond_to do |format|
      if @mtb_card.update_attributes(params[:mtb_card])
        format.html { redirect_to @mtb_card, notice: 'Mtb card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtb_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtb_cards/1
  # DELETE /mtb_cards/1.json
  def destroy
    @mtb_card = MtbCard.find(params[:id])
    @mtb_card.destroy

    respond_to do |format|
      format.html { redirect_to mtb_cards_url }
      format.json { head :no_content }
    end
  end
end
