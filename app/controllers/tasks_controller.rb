class TasksController < ApplicationController
  before_filter :count
  after_filter :count

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    @task = Task.new
    @number = 0

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(params[:task])

    respond_to do |format|
      if @task.save
        #format.html { redirect_to @task, :notice => 'Task was successfully created.' }
        @tasks = Task.all
        @number = 0
        format.html { render :action => 'index' }
        format.json { render :json => @task, :status => :created, :location => @task }
      else
        format.html { render :action => "new" }
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to ({ :action => 'index'}), :notice => 'Task was successfully updated.' }
        # format.html { redirect_to @task, :notice => 'Task was successfully updated.' }
        # format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy 
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to :action => "index" }
      format.json { head :no_content }
    end
  end

  # add /add
  # add /add.json
  def add
    @tasks = Task.all
    # @tasks.push(Task.new)
    @number = 0

    respond_to do |format|
      format.html { redirect_to :action => "index" }
      # format.html { render :action => "index" }
      format.json { head :no_content }
    end
  end

  # タスク数をカウントしてメニューバーに表示する。
  private
  def count
      @taskCount = Task.all.size
  end
end
