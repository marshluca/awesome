class AddressesController < ApplicationController
  before_action :set_agent
  before_action :set_address, only: [:show, :edit, :update, :destroy, :mark]

  # GET /addresses
  # GET /addresses.json
  def index
    @addresses = @agent.addresses
  end

  # GET /addresses/1
  # GET /addresses/1.json
  def show
  end

  # GET /addresses/new
  def new
    @address = @agent.addresses.new
  end

  # GET /addresses/1/edit
  def edit
  end

  # POST /addresses
  # POST /addresses.json
  def create
    @address = @agent.addresses.new(address_params)

    respond_to do |format|
      if @address.save
        format.html { redirect_to agent_address_url(@agent, @address), notice: 'Address was successfully created.' }
        format.json { render action: 'show', status: :created, location: @address }
      else
        format.html { render action: 'new' }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addresses/1
  # PATCH/PUT /addresses/1.json
  def update
    respond_to do |format|
      if @address.update(address_params)
        format.html { redirect_to agent_address_url(@agent, @address), notice: 'Address was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addresses/1
  # DELETE /addresses/1.json
  def destroy
    @address.destroy
    respond_to do |format|
      format.html { redirect_to agent_addresses_url(@agent) }
      format.json { head :no_content }
    end
  end

  # PUT /addresses/1
  # PUT /addresses/1.json
  def mark
    respond_to do |format|
      if @agent.default_address = @address
        format.html { redirect_to agents_url, notice: 'Address was successfully marked as default.' }
        format.json { head :no_content }
      else
        format.html { render action: 'index' }
        format.json { render json: @address.errors, status: :unprocessable_entity }
      end
    end
    
  end

  private
    def set_agent
      @agent = Agent.find(params[:agent_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_address
      @address = @agent.addresses.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_params
      params.require(:address).permit(:agent_id, :postcode, :address1, :address2, :address3, :town, :county, :country)
    end
end
