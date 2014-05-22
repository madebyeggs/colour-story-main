class CreateWritings < ActiveRecord::Migration
  def change
    create_table :writings do |t|

      t.timestamps
    end
  end
end
