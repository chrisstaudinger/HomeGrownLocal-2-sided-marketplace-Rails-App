module ItemsHelper
    def return_item_id_from_item_name(item_category_name)
        ItemCategory.all.each do |category|
            if (category.name == item_category_name)
                return category.id
            end
        end
    end
end
