class EntryController < ApplicationController

  def new
    @entry = Entry.new
  end

  def create
    @cohort = Cohort.find_by id: params[:id]
    @entry = Entry.new params.require(:entry).permit(:word, :definition)
    @entry.cohort_id = @cohort.id
      if @entry.save
        redirect_to entries_path(id: @cohort.id)
      else
        render :new
      end
  end

  def show
    @entry = Entry.find_by id: params[:id]
  end

  def create_comment
    @entry = Entry.find_by id: params[:id]
    @comment = Comment.new

    @comment.content = params[:comment][:content]
    @comment.entry_id = @entry.id
    @comment.user_id = @current_user.id

      if @comment.save
        redirect_to entry_path(id: @entry.id)
      else
        render :entries
      end
  end

end
