module ItemsHelper
    # def return_item_id_from_item_name(item_category_name)
    #     ItemCategory.all.each do |category|
    #         if (category.name == item_category_name)
    #             return category.id
    #         end
    #     end
    # end

    def return_item_id_from_item_name(item_category_name)
        selected_category = nil
        ItemCategory.all.each do |category|
          if (category.name == item_category_name)
            selected_category = category.id
          end
        end
        return selected_category
    end
end
