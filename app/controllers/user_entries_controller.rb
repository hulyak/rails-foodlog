class UserEntriesController < ApplicationController
  before_action :set_user_entry, only: %i[ show edit update destroy ]

  # GET /user_entries or /user_entries.json
  def index
    @user_entries = UserEntry.all
  end

  # GET /user_entries/1 or /user_entries/1.json
  def show
  end

  # GET /user_entries/new
  def new
    @user_entry = UserEntry.new
  end

  # GET /user_entries/1/edit
  def edit
  end

  # POST /user_entries or /user_entries.json
  def create
    @user_entry = UserEntry.new(user_entry_params)

    respond_to do |format|
      if @user_entry.save
        format.html { redirect_to user_entry_url(@user_entry), notice: "User entry was successfully created." }
        format.json { render :show, status: :created, location: @user_entry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_entries/1 or /user_entries/1.json
  def update
    respond_to do |format|
      if @user_entry.update(user_entry_params)
        format.html { redirect_to user_entry_url(@user_entry), notice: "User entry was successfully updated." }
        format.json { render :show, status: :ok, location: @user_entry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_entries/1 or /user_entries/1.json
  def destroy
    @user_entry.destroy

    respond_to do |format|
      format.html { redirect_to user_entries_url, notice: "User entry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_entry
      @user_entry = UserEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_entry_params
      params.require(:user_entry).permit(:meal_type, :calories, :proteins, :carbohydrates, :fats, :integer)
    end
end
