class EntryPolicy < ApplicationPolicy

  def initialize(current_user, entry)
    @current_user = current_user
    @entry = entry
  end

  def new?
    @current_user
  end

  def edit?
    is_owner?(@entry)
  end

  def create?
    @current_user
  end

  def update?
    is_owner?(@entry)
  end

  def destroy?
    is_owner?(@entry)
  end



end