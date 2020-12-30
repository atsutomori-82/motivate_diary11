class DiariesController < ApplicationController
before_action :authenticate_user!, except: [:index]

  def index
    @diaries = Diary.all.order('created_at DESC')
  end

  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
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
    params.require(:diary).permit(:image, :text, :condition_id, :motivation_id, :work_volume_id).merge(user_id: current_user.id)
  end
end
