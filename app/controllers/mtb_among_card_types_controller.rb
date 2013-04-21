class MtbAmongCardTypesController < ApplicationController
  # GET /mtb_among_card_types
  # GET /mtb_among_card_types.json
  def index
    @mtb_among_card_types = MtbAmongCardType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtb_among_card_types }
    end
  end

  # GET /mtb_among_card_types/1
  # GET /mtb_among_card_types/1.json
  def show
    @mtb_among_card_type = MtbAmongCardType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtb_among_card_type }
    end
  end

  # GET /mtb_among_card_types/new
  # GET /mtb_among_card_types/new.json
  def new
    @mtb_among_card_type = MtbAmongCardType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtb_among_card_type }
    end
  end

  # GET /mtb_among_card_types/1/edit
  def edit
    @mtb_among_card_type = MtbAmongCardType.find(params[:id])
  end

  # POST /mtb_among_card_types
  # POST /mtb_among_card_types.json
  def create
    @mtb_among_card_type = MtbAmongCardType.new(params[:mtb_among_card_type])

    respond_to do |format|
      if @mtb_among_card_type.save
        format.html { redirect_to @mtb_among_card_type, notice: 'Mtb among card type was successfully created.' }
        format.json { render json: @mtb_among_card_type, status: :created, location: @mtb_among_card_type }
      else
        format.html { render action: "new" }
        format.json { render json: @mtb_among_card_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtb_among_card_types/1
  # PUT /mtb_among_card_types/1.json
  def update
    @mtb_among_card_type = MtbAmongCardType.find(params[:id])

    respond_to do |format|
      if @mtb_among_card_type.update_attributes(params[:mtb_among_card_type])
        format.html { redirect_to @mtb_among_card_type, notice: 'Mtb among card type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtb_among_card_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtb_among_card_types/1
  # DELETE /mtb_among_card_types/1.json
  def destroy
    @mtb_among_card_type = MtbAmongCardType.find(params[:id])
    @mtb_among_card_type.destroy

    respond_to do |format|
      format.html { redirect_to mtb_among_card_types_url }
      format.json { head :no_content }
    end
  end
end
