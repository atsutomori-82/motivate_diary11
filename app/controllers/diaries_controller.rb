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

  def destroy
  end

  private
  def diary_params
    params.require(:diary).permit(:calendar_date, :text, :condition_id, :motivation_id, :work_volume_id, :image).merge(user_id: current_user.id)
  end
end