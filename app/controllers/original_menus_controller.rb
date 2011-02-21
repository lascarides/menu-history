class OriginalMenusController < ApplicationController
  # GET /original_menus
  # GET /original_menus.xml
  def index
    @original_menus = OriginalMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @original_menus }
    end
  end

  # GET /original_menus/1
  # GET /original_menus/1.xml
  def show
    @original_menu = OriginalMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @original_menu }
    end
  end

  # GET /original_menus/new
  # GET /original_menus/new.xml
  def new
    @original_menu = OriginalMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @original_menu }
    end
  end

  # GET /original_menus/1/edit
  def edit
    @original_menu = OriginalMenu.find(params[:id])
  end

  # POST /original_menus
  # POST /original_menus.xml
  def create
    @original_menu = OriginalMenu.new(params[:original_menu])

    respond_to do |format|
      if @original_menu.save
        format.html { redirect_to(@original_menu, :notice => 'Original menu was successfully created.') }
        format.xml  { render :xml => @original_menu, :status => :created, :location => @original_menu }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @original_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /original_menus/1
  # PUT /original_menus/1.xml
  def update
    @original_menu = OriginalMenu.find(params[:id])

    respond_to do |format|
      if @original_menu.update_attributes(params[:original_menu])
        format.html { redirect_to(@original_menu, :notice => 'Original menu was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @original_menu.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /original_menus/1
  # DELETE /original_menus/1.xml
  def destroy
    @original_menu = OriginalMenu.find(params[:id])
    @original_menu.destroy

    respond_to do |format|
      format.html { redirect_to(original_menus_url) }
      format.xml  { head :ok }
    end
  end
end
