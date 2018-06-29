class AddColumnToMessage < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :uuid, :string
  end
end
