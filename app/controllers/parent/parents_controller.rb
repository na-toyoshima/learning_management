class Parent::ParentsController < Parent::Base
  def show
    @followings = current_parent.parent_follows.all
  end
end
