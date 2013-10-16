class RenameCodeField < ActiveRecord::Migration
  def self.up
    rename_column :codes, :code, :name
  end

  def self.down
    rename_column :codes, :name, :code
  end
end
