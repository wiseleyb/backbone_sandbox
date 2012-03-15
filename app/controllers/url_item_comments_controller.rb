class UrlItemCommentsController < ApplicationController
  # GET /url_item_comments
  # GET /url_item_comments.json
  def index
    @url_item_comments = UrlItemComment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @url_item_comments }
    end
  end

  # GET /url_item_comments/1
  # GET /url_item_comments/1.json
  def show
    @url_item_comment = UrlItemComment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @url_item_comment }
    end
  end

  # GET /url_item_comments/new
  # GET /url_item_comments/new.json
  def new
    @url_item_comment = UrlItemComment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @url_item_comment }
    end
  end

  # GET /url_item_comments/1/edit
  def edit
    @url_item_comment = UrlItemComment.find(params[:id])
  end

  # POST /url_item_comments
  # POST /url_item_comments.json
  def create
    @url_item_comment = UrlItemComment.new(params[:url_item_comment])

    respond_to do |format|
      if @url_item_comment.save
        format.html { redirect_to @url_item_comment, :notice => 'Url item comment was successfully created.' }
        format.json { render :json => @url_item_comment, :status => :created, :location => @url_item_comment }
      else
        format.html { render :action => "new" }
        format.json { render :json => @url_item_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /url_item_comments/1
  # PUT /url_item_comments/1.json
  def update
    @url_item_comment = UrlItemComment.find(params[:id])

    respond_to do |format|
      if @url_item_comment.update_attributes(params[:url_item_comment])
        format.html { redirect_to @url_item_comment, :notice => 'Url item comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @url_item_comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /url_item_comments/1
  # DELETE /url_item_comments/1.json
  def destroy
    @url_item_comment = UrlItemComment.find(params[:id])
    @url_item_comment.destroy

    respond_to do |format|
      format.html { redirect_to url_item_comments_url }
      format.json { head :no_content }
    end
  end
end
