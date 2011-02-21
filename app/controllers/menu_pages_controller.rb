class MenuPagesController < ApplicationController
  # GET /menu_pages
  # GET /menu_pages.xml
  def index
    @menu_pages = MenuPage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menu_pages }
    end
  end

  # GET /menu_pages/1
  # GET /menu_pages/1.xml
  def show
    @menu_page = MenuPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menu_page }
    end
  end

  # GET /menu_pages/new
  # GET /menu_pages/new.xml
  def new
    @menu_page = MenuPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menu_page }
    end
  end

  # GET /menu_pages/1/edit
  def edit
    @menu_page = MenuPage.find(params[:id])
  end

  # POST /menu_pages
  # POST /menu_pages.xml
  def create
    @menu_page = MenuPage.new(params[:menu_page])

    respond_to do |format|
      if @menu_page.save
        format.html { redirect_to(@menu_page, :notice => 'Menu page was successfully created.') }
        format.xml  { render :xml => @menu_page, :status => :created, :location => @menu_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menu_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menu_pages/1
  # PUT /menu_pages/1.xml
  def update
    @menu_page = MenuPage.find(params[:id])

    respond_to do |format|
      if @menu_page.update_attributes(params[:menu_page])
        format.html { redirect_to(@menu_page, :notice => 'Menu page was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menu_page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_pages/1
  # DELETE /menu_pages/1.xml
  def destroy
    @menu_page = MenuPage.find(params[:id])
    @menu_page.destroy

    respond_to do |format|
      format.html { redirect_to(menu_pages_url) }
      format.xml  { head :ok }
    end
  end
end
