module ApplicationHelper
  def menus
    @menu = Category.all
  end
end
