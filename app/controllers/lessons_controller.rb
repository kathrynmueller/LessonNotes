class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  # before_action :set_user, only: [:new, :create]

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.all.order(lesson_date: :desc)
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    # @student = Student.find(params[:id])
  end

  # GET /lessons/new
  def new
    @lesson = Lesson.new
    @student = Student.find(params[:student_id]) if params.has_key?(:student_id)
    @lesson.student = @student
  end

  # GET /lessons/1/edit
  def edit
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(lesson_params)

    respond_to do |format|
      if @lesson.save

        # Resque.enqueue(TeacherReminder, @lesson.id)
        # LessonMailer.new_lesson(@lesson).deliver_now 

        # Resque.enqueue(StudentReminder, @lesson.id)
        # StudentMailer.new_lesson(@lesson).deliver_now

        format.html { redirect_to @lesson.student, notice: 'Lesson was successfully created.' }
        format.json { render :show, status: :created, location: @lesson }


      else
        format.html { render :new }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lessons/1
  # PATCH/PUT /lessons/1.json
  def update

    # student = Student.find(params[:id])

    respond_to do |format|
      if @lesson.update(lesson_params)
        format.html { redirect_to @lesson.student, 
              notice: 'Lesson was successfully updated.' }
        format.json { render :show, status: :ok, location: @lesson }
      else
        format.html { render :edit }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson.destroy
    respond_to do |format|
      format.html { redirect_to lessons_url, notice: 'Lesson was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def lessons_by_student
    @student = Student.find(params[:id])
    @lessons = @student.lessons.order(lesson_date: :desc)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    def set_user
        @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:student_id, :lesson_date, :status, :grade, :teachernote, :studentnote, :reminder, :user_id)
    end
end
