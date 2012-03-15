class UrlItemsController < ApplicationController
  # GET /url_items
  # GET /url_items.json
  def index
    @url_items = UrlItem.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @url_items }
    end
  end

  # GET /url_items/1
  # GET /url_items/1.json
  def show
    @url_item = UrlItem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @url_item }
    end
  end

  # GET /url_items/new
  # GET /url_items/new.json
  def new
    @url_item = UrlItem.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @url_item }
    end
  end

  # GET /url_items/1/edit
  def edit
    @url_item = UrlItem.find(params[:id])
  end

  # POST /url_items
  # POST /url_items.json
  def create
    @url_item = UrlItem.new(params[:url_item])

    respond_to do |format|
      if @url_item.save
        format.html { redirect_to @url_item, :notice => 'Url item was successfully created.' }
        format.json { render :json => @url_item, :status => :created, :location => @url_item }
      else
        format.html { render :action => "new" }
        format.json { render :json => @url_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /url_items/1
  # PUT /url_items/1.json
  def update
    @url_item = UrlItem.find(params[:id])

    respond_to do |format|
      if @url_item.update_attributes(params[:url_item])
        format.html { redirect_to @url_item, :notice => 'Url item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @url_item.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /url_items/1
  # DELETE /url_items/1.json
  def destroy
    @url_item = UrlItem.find(params[:id])
    @url_item.destroy

    respond_to do |format|
      format.html { redirect_to url_items_url }
      format.json { head :no_content }
    end
  end
end
