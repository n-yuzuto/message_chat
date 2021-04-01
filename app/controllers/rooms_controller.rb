class RoomsController < ApplicationController

  # ついでにRoom一覧を表示させるアクションも追加しておく
  def index
    @rooms = Room.all.order(:id)
  end

  def show
    @room = Room.find(params[:id])
    @messages = @room.messages
  end

  def new
    @room = Room.new
    @room.save
    redirect_to("/")
  end

end