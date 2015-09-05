class IncomingHooksController < ApplicationController
  before_action :set_incoming_hook, only: [:show, :edit, :update, :destroy]

  # GET /incoming_hooks
  # GET /incoming_hooks.json
  def index
    @incoming_hooks = IncomingHook.all
  end

  # GET /incoming_hooks/1
  # GET /incoming_hooks/1.json
  def show
  end

  # GET /incoming_hooks/new
  def new
    @incoming_hook = IncomingHook.new
  end

  # GET /incoming_hooks/1/edit
  def edit
  end

  # POST /incoming_hooks
  # POST /incoming_hooks.json
  def create
    @incoming_hook = IncomingHook.new(incoming_hook_params)

    respond_to do |format|
      if @incoming_hook.save
        format.html { redirect_to @incoming_hook, notice: 'Incoming hook was successfully created.' }
        format.json { render :show, status: :created, location: @incoming_hook }
      else
        format.html { render :new }
        format.json { render json: @incoming_hook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incoming_hooks/1
  # PATCH/PUT /incoming_hooks/1.json
  def update
    respond_to do |format|
      if @incoming_hook.update(incoming_hook_params)
        format.html { redirect_to @incoming_hook, notice: 'Incoming hook was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoming_hook }
      else
        format.html { render :edit }
        format.json { render json: @incoming_hook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoming_hooks/1
  # DELETE /incoming_hooks/1.json
  def destroy
    @incoming_hook.destroy
    respond_to do |format|
      format.html { redirect_to incoming_hooks_url, notice: 'Incoming hook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoming_hook
      @incoming_hook = IncomingHook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incoming_hook_params
      params.require(:incoming_hook).permit(:name, :webhook_url, :username, :icon_emoji, :icon_url, :channel)
    end
end
