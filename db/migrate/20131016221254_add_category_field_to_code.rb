class AddCategoryFieldToCode < ActiveRecord::Migration
  def up
    add_column :codes, :category_id, :integer
  end

  def down
    remove_column :codes, :category_id
  end
end
