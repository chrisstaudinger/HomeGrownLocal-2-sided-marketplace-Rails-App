class ChangePostcodeTypeInLocations < ActiveRecord::Migration[5.2]
  def change
    change_column :locations, :postcode, :string
  end
end
