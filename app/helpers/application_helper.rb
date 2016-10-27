module ApplicationHelper
  def active_controller?(controller_name)
    'active' if params[:controller].include?(controller_name)
  end
end
