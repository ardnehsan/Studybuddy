class EncyclopediaController < ApplicationController

  def index
    @entry = Entry.all
  end

  def new_entry
  @entry = Entry.new
  end


  def create_word
  @entry = Entry.new params.require(:entry).permit(:word, :definition)

      if @entry.save
        redirect_to entry_path(:@entry.id)
      else
        render :new
      end
  end

  def create_comment
  @entry = Entry.find_by id: params[:id]
  @comment = Comment.new

  @comment.content = params[:comment][:content]
  @comment.entry_id = @entry.id
  @comment.user_id = @user.id

      if @comment.save
        redirect_to entry_path(id: @entry.id)
      else
        render :index
      end
  end

end
