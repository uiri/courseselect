class StudentCoursesController < ApplicationController
  # GET /student_courses
  # GET /student_courses.xml
  def index
    @student_courses = StudentCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_courses }
    end
  end

  # GET /student_courses/1
  # GET /student_courses/1.xml
  def show
    @student_course = StudentCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_course }
    end
  end

  # GET /student_courses/new
  # GET /student_courses/new.xml
  def new
    @student_course = StudentCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_course }
    end
  end

  # GET /student_courses/1/edit
  def edit
    @student_course = StudentCourse.find(params[:id])
  end

  # POST /student_courses
  # POST /student_courses.xml
  def create
    @student_course = StudentCourse.new(params[:student_course])

    respond_to do |format|
      if @student_course.save
        flash[:notice] = 'StudentCourse was successfully created.'
        format.html { redirect_to(@student_course) }
        format.xml  { render :xml => @student_course, :status => :created, :location => @student_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_courses/1
  # PUT /student_courses/1.xml
  def update
    @student_course = StudentCourse.find(params[:id])

    respond_to do |format|
      if @student_course.update_attributes(params[:student_course])
        flash[:notice] = 'StudentCourse was successfully updated.'
        format.html { redirect_to(@student_course) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_courses/1
  # DELETE /student_courses/1.xml
  def destroy
    @student_course = StudentCourse.find(params[:id])
    @student_course.destroy

    respond_to do |format|
      format.html { redirect_to(student_courses_url) }
      format.xml  { head :ok }
    end
  end
end
