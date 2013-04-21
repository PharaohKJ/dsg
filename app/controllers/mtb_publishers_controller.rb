class MtbPublishersController < ApplicationController
  # GET /mtb_publishers
  # GET /mtb_publishers.json
  def index
    @mtb_publishers = MtbPublisher.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mtb_publishers }
    end
  end

  # GET /mtb_publishers/1
  # GET /mtb_publishers/1.json
  def show
    @mtb_publisher = MtbPublisher.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mtb_publisher }
    end
  end

  # GET /mtb_publishers/new
  # GET /mtb_publishers/new.json
  def new
    @mtb_publisher = MtbPublisher.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mtb_publisher }
    end
  end

  # GET /mtb_publishers/1/edit
  def edit
    @mtb_publisher = MtbPublisher.find(params[:id])
  end

  # POST /mtb_publishers
  # POST /mtb_publishers.json
  def create
    @mtb_publisher = MtbPublisher.new(params[:mtb_publisher])

    respond_to do |format|
      if @mtb_publisher.save
        format.html { redirect_to @mtb_publisher, notice: 'Mtb publisher was successfully created.' }
        format.json { render json: @mtb_publisher, status: :created, location: @mtb_publisher }
      else
        format.html { render action: "new" }
        format.json { render json: @mtb_publisher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mtb_publishers/1
  # PUT /mtb_publishers/1.json
  def update
    @mtb_publisher = MtbPublisher.find(params[:id])

    respond_to do |format|
      if @mtb_publisher.update_attributes(params[:mtb_publisher])
        format.html { redirect_to @mtb_publisher, notice: 'Mtb publisher was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mtb_publisher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mtb_publishers/1
  # DELETE /mtb_publishers/1.json
  def destroy
    @mtb_publisher = MtbPublisher.find(params[:id])
    @mtb_publisher.destroy

    respond_to do |format|
      format.html { redirect_to mtb_publishers_url }
      format.json { head :no_content }
    end
  end
end
