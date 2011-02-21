class MenuSectionInstancesController < ApplicationController
  # GET /menu_section_instances
  # GET /menu_section_instances.xml
  def index
    @menu_section_instances = MenuSectionInstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @menu_section_instances }
    end
  end

  # GET /menu_section_instances/1
  # GET /menu_section_instances/1.xml
  def show
    @menu_section_instance = MenuSectionInstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @menu_section_instance }
    end
  end

  # GET /menu_section_instances/new
  # GET /menu_section_instances/new.xml
  def new
    @menu_section_instance = MenuSectionInstance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @menu_section_instance }
    end
  end

  # GET /menu_section_instances/1/edit
  def edit
    @menu_section_instance = MenuSectionInstance.find(params[:id])
  end

  # POST /menu_section_instances
  # POST /menu_section_instances.xml
  def create
    @menu_section_instance = MenuSectionInstance.new(params[:menu_section_instance])

    respond_to do |format|
      if @menu_section_instance.save
        format.html { redirect_to(@menu_section_instance, :notice => 'Menu section instance was successfully created.') }
        format.xml  { render :xml => @menu_section_instance, :status => :created, :location => @menu_section_instance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @menu_section_instance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /menu_section_instances/1
  # PUT /menu_section_instances/1.xml
  def update
    @menu_section_instance = MenuSectionInstance.find(params[:id])

    respond_to do |format|
      if @menu_section_instance.update_attributes(params[:menu_section_instance])
        format.html { redirect_to(@menu_section_instance, :notice => 'Menu section instance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @menu_section_instance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_section_instances/1
  # DELETE /menu_section_instances/1.xml
  def destroy
    @menu_section_instance = MenuSectionInstance.find(params[:id])
    @menu_section_instance.destroy

    respond_to do |format|
      format.html { redirect_to(menu_section_instances_url) }
      format.xml  { head :ok }
    end
  end
end
