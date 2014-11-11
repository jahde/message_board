class AddColumnToTable < ActiveRecord::Migration
  def change
  end

  def up
    add_column :tablename, :column_name, :column_type
  end
end
