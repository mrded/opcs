class RenameCodeField < ActiveRecord::Migration
  def up
    rename_column :codes, :code, :name
  end

  def down
    rename_column :codes, :name, :code
  end
end
