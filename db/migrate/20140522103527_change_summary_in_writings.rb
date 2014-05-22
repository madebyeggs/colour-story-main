class ChangeSummaryInWritings < ActiveRecord::Migration
  def up
      change_column :writings, :summary, :text
  end
  def down
      # This might cause trouble if you have strings longer
      # than 255 characters.
      change_column :writings, :summary, :string
  end
end
