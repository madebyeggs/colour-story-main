class AddContentToWritings < ActiveRecord::Migration
  def change
    add_column :writings, :content, :string, :limit => nil
  end
end
