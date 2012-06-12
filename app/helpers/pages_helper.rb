module PagesHelper
  
  def resource_name
    :worker
  end

  def resource
    @resource ||= Worker.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:worker]
  end
  
end
