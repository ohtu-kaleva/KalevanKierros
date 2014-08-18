class UutisetController < ApplicationController
  before_action :set_uutiset, only: [:show, :edit, :update, :destroy]
  before_action :redirect_if_user_not_admin, except: [:show, :index, :archive_by_year]
  helper_method :show_latest

  # GET /uutiset
  # GET /uutiset.json
  def index
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
  def create
    @uutiset = Uutiset.new(uutiset_params)

    if @uutiset.save
      redirect_to @uutiset, flash: { success: 'Uutinen luotu.' }
    else
      render :new
    end
  end

  # PATCH/PUT /uutiset/1
  def update
    if @uutiset.update(uutiset_params)
      redirect_to @uutiset, flash: { success: 'Uutinen päivitetty.' }
    else
      render :edit
    end
  end

  # DELETE /uutiset/1
  def destroy
    @uutiset.destroy
    redirect_to uutiset_index_url, flash: { success: 'Uutinen poistettu.' }
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uutiset
      @uutiset = Uutiset.find_by id: params[:id]
      return if @uutiset

      redirect_to :root, flash: { alert: 'Uutista ei löytynyt' }
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uutiset_params
      params.require(:uutiset).permit(:title, :body)
    end
end
