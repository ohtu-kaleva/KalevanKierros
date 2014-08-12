class UutisetController < ApplicationController
  before_action :set_uutiset, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:show, :index, :archive_by_year]
  helper_method :show_latest

  # GET /uutiset
  # GET /uutiset.json
  def index
#    @uutiset = Uutiset.all
    @uutiset = Uutiset.all.paginate(page: params[:page], per_page: 10)
    if user_is_admin?
      render :action => 'index_admin'
    else
      render :action => 'index'
    end

  end

  # GET /uutiset/1
  # GET /uutiset/1.json
  def show
  end

  def archive_by_year
    startdate = DateTime.new(params[:year].to_i)
    enddate = DateTime.new(params[:year].to_i,12,31,23,59,59)
    @uutiset = Uutiset.where(:created_at => startdate..enddate)
  end

  def show_latest
    @show_latest = Uutiset.order('created_at desc').limit(10)
  end

  # GET /uutiset/new
  def new
    @uutiset = Uutiset.new
  end

  # GET /uutiset/1/edit
  def edit
  end

  # POST /uutiset
  # POST /uutiset.json
  def create
    @uutiset = Uutiset.new(uutiset_params)

    respond_to do |format|
      if @uutiset.save
        format.html { redirect_to @uutiset, notice: 'Uutiset was successfully created.' }
        format.json { render :show, status: :created, location: @uutiset }
      else
        format.html { render :new }
        format.json { render json: @uutiset.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uutiset/1
  # PATCH/PUT /uutiset/1.json
  def update
    respond_to do |format|
      if @uutiset.update(uutiset_params)
        format.html { redirect_to @uutiset, notice: 'Uutiset was successfully updated.' }
        format.json { render :show, status: :ok, location: @uutiset }
      else
        format.html { render :edit }
        format.json { render json: @uutiset.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uutiset/1
  # DELETE /uutiset/1.json
  def destroy
    @uutiset.destroy
    respond_to do |format|
      format.html { redirect_to uutiset_index_url, notice: 'Uutiset was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uutiset
      @uutiset = Uutiset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uutiset_params
      params.require(:uutiset).permit(:title, :body)
    end
end
