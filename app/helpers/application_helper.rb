module ApplicationHelper
  def current_order
    if !session[:orden_id].nil?
      Orden.find(session[:orden_id])
    else
      Orden.new
    end
  end
  def li_active (path)
    if current_page? path
      "active"
    end
  end
  def a_active (path)
    if !current_page? path
      "collapsed"
    end
  end
  def div_active (path)
    if current_page? path
      "show"
    end
  end
  def a2_active (path)
    if current_page? path
      "active"
    end
  end
end
