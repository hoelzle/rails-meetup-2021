class AddIndexToCode < ActiveRecord::Migration[6.1]
  def change
    add_index_options :codes, :name, unique: true
  end
end
