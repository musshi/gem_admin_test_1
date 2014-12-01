module ApplicationHelper
  def load_menu_helper(menu_data_array)
    html_li_array = []
    
    menu_data_array.each do |item|
      html_li_array << content_tag(:li, link_to(item[:text], item[:url]).html_safe)
    end
    
    content_tag(:ul, html_li_array.join().html_safe)
  end

end
