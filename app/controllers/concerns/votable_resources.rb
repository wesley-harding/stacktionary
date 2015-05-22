module VotableResources
  extend ActiveSupport::Concern

  def upvote
    class_name = params[:controller].singularize
    klass = class_name.camelize.constantize
    @object = klass.find(params[:id])

    authorize @object

    @object.liked_by current_user

    respond_to do |format|
      format.html {redirect_to :back }
      format.json { render json: { } }
    end
  end

  def downvote
    class_name = params[:controller].singularize
    klass = class_name.camelize.constantize
    @object = klass.find(params[:id])

    authorize @object

    @object.disliked_by current_user

    respond_to do |format|
      format.html {redirect_to :back }
      format.json { render json: { } }
    end
  end

end