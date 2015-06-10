class ChangeTypeToCategory < ActiveRecord::Migration
  def change
    rename_column :meals, :type, :category
  end
end
