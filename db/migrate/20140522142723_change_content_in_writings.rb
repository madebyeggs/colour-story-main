class ChangeContentInWritings < ActiveRecord::Migration
  def up
      change_column :writings, :content, :text, :limit => nil
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :writings, :content, :string
  end
end
