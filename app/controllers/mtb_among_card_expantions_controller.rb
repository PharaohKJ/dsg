class MtbAmongCardExpantionsController < ApplicationController
  # GET /mtb_among_card_expantions
  # GET /mtb_among_card_expantions.json
  def index
    @mtb_among_card_expantions = MtbAmongCardExpantion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtb_among_card_expantions }
    end
  end

  # GET /mtb_among_card_expantions/1
  # GET /mtb_among_card_expantions/1.json
  def show
    @mtb_among_card_expantion = MtbAmongCardExpantion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtb_among_card_expantion }
    end
  end

  # GET /mtb_among_card_expantions/new
  # GET /mtb_among_card_expantions/new.json
  def new
    @mtb_among_card_expantion = MtbAmongCardExpantion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtb_among_card_expantion }
    end
  end

  # GET /mtb_among_card_expantions/1/edit
  def edit
    @mtb_among_card_expantion = MtbAmongCardExpantion.find(params[:id])
  end

  # POST /mtb_among_card_expantions
  # POST /mtb_among_card_expantions.json
  def create
    @mtb_among_card_expantion = MtbAmongCardExpantion.new(params[:mtb_among_card_expantion])

    respond_to do |format|
      if @mtb_among_card_expantion.save
        format.html { redirect_to @mtb_among_card_expantion, notice: 'Mtb among card expantion was successfully created.' }
        format.json { render json: @mtb_among_card_expantion, status: :created, location: @mtb_among_card_expantion }
      else
        format.html { render action: "new" }
        format.json { render json: @mtb_among_card_expantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtb_among_card_expantions/1
  # PUT /mtb_among_card_expantions/1.json
  def update
    @mtb_among_card_expantion = MtbAmongCardExpantion.find(params[:id])

    respond_to do |format|
      if @mtb_among_card_expantion.update_attributes(params[:mtb_among_card_expantion])
        format.html { redirect_to @mtb_among_card_expantion, notice: 'Mtb among card expantion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtb_among_card_expantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtb_among_card_expantions/1
  # DELETE /mtb_among_card_expantions/1.json
  def destroy
    @mtb_among_card_expantion = MtbAmongCardExpantion.find(params[:id])
    @mtb_among_card_expantion.destroy

    respond_to do |format|
      format.html { redirect_to mtb_among_card_expantions_url }
      format.json { head :no_content }
    end
  end
end
