class HabbitEntriesController < ApplicationController
  before_action :set_habbit_entry, only: %i[ show edit update destroy ]

  # GET /habbit_entries or /habbit_entries.json
  def index
    @habbit_entries = HabbitEntry.all
  end

  # GET /habbit_entries/1 or /habbit_entries/1.json
  def show
  end

  # GET /habbit_entries/new
  def new
    @habbit_entry = HabbitEntry.new
  end

  # GET /habbit_entries/1/edit
  def edit
  end

  # POST /habbit_entries or /habbit_entries.json
  def create
    @habbit_entry = HabbitEntry.new(habbit_entry_params)

    respond_to do |format|
      if @habbit_entry.save
        format.html { redirect_to habbit_entry_url(@habbit_entry), notice: "Habbit entry was successfully created." }
        format.json { render :show, status: :created, location: @habbit_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @habbit_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /habbit_entries/1 or /habbit_entries/1.json
  def update
    respond_to do |format|
      if @habbit_entry.update(habbit_entry_params)
        format.html { redirect_to habbit_entry_url(@habbit_entry), notice: "Habbit entry was successfully updated." }
        format.json { render :show, status: :ok, location: @habbit_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @habbit_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /habbit_entries/1 or /habbit_entries/1.json
  def destroy
    @habbit_entry.destroy!

    respond_to do |format|
      format.html { redirect_to habbit_entries_url, notice: "Habbit entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habbit_entry
      @habbit_entry = HabbitEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habbit_entry_params
      params.require(:habbit_entry).permit(:name, :occurrence, :status)
    end
end
