class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # GET /entries
  def index
    @entries = Entry.all
  end

  # GET /entries/1
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
  end

  # GET /entries/1/edit
  def edit
  end

  # POST /entries
  def create
    @entry = Entry.new(entry_params)

    if @entry.save
      flash[:success] = "Entry was successfully created."
      redirect_to entries_url
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /entries/1
  def update
    if @entry.update(entry_params)
      flash[:success] = "Entry was successfully updated."
      redirect_to entries_url
    else
      render action: 'edit'
    end
  end

  # DELETE /entries/1
  def destroy
    @entry.destroy
    redirect_to entries_url, notice: 'Entry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def entry_params
      params.require(:entry).permit(:folder, :date, :theme, :spend_time, :user_id)
    end
end
