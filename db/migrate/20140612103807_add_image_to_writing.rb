class AddImageToWriting < ActiveRecord::Migration
  def change
    add_column :writings, :image, :string
  end
end
