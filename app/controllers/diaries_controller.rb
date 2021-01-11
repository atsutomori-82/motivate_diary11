class DiariesController < ApplicationController
before_action :authenticate_user!, except: [:index, :new]

  def index
    @diaries = Diary.all.order('created_at DESC')
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)

    if @diary.save
       redirect_to root_path
    else
      render :new
    end
  end

  def show
    # @diary = Diary.find_by(id: paramas[:id])
    # @user = User.find_by(id: @diary.user_id)
  end

  def destroy
    if current_user.id == @diary.user_id
      @diary.destroy
    end
      redirect_to root_path
  end

  private
  def diary_params
    params.require(:diary).permit(:calendar_date, :text, :condition_id, :motivation_id, :work_volume_id, :image).merge(user_id: current_user.id)
  end
end