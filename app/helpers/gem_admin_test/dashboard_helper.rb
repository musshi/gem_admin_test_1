module GemAdminTest
  module DashboardHelper
    def load_menu_helper(menu_data_array)
      html_li_array = []
      if menu_data_array
        menu_data_array.each do |item|
          html_li_array << content_tag(:li, link_to(item[:text], item[:url]).html_safe)
        end
        content_tag(:ul, html_li_array.join().html_safe)
      end
    end
    
    
    def load_index_of_one_model(model_name)
      model_class_name = model_name.classify.constantize
      
      array_list_object = []
      if model_class_name.count > 0
        model_class_name.all.each do |object|
          array_list_object << content_tag(:li, link_to(object.try(:name), "/#{object.class.name.downcase}/#{object.try(:id)}").html_safe)
        end
        content_tag(:ul, array_list_object.join().html_safe)
      else
        "No Item"
      end
    end
    
    
    
    
  end
end