class Post1sController < ApplicationController
  # GET /post1s
  # GET /post1s.json
  def index
    @post1s = Post1.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @post1s }
    end
  end

  # GET /post1s/1
  # GET /post1s/1.json
  def show
    @post1 = Post1.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post1 }
    end
  end

  # GET /post1s/new
  # GET /post1s/new.json
  def new
    @post1 = Post1.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post1 }
    end
  end

  # GET /post1s/1/edit
  def edit
    @post1 = Post1.find(params[:id])
  end

  # POST /post1s
  # POST /post1s.json
  def create
    @post1 = Post1.new(params[:post1])

    respond_to do |format|
      if @post1.save
        format.html { redirect_to @post1, notice: 'Post1 was successfully created.' }
        format.json { render json: @post1, status: :created, location: @post1 }
      else
        format.html { render action: "new" }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /post1s/1
  # PUT /post1s/1.json
  def update
    @post1 = Post1.find(params[:id])

    respond_to do |format|
      if @post1.update_attributes(params[:post1])
        format.html { redirect_to @post1, notice: 'Post1 was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post1s/1
  # DELETE /post1s/1.json
  def destroy
    @post1 = Post1.find(params[:id])
    @post1.destroy

    respond_to do |format|
      format.html { redirect_to post1s_url }
      format.json { head :no_content }
    end
  end
end
