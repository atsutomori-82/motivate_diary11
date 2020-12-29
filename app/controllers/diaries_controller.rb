class DiariesController < ApplicationController
before_action :authenticate_user!, except: [:index]

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

end
