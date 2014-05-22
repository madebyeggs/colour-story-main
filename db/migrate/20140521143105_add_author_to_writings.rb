class AddAuthorToWritings < ActiveRecord::Migration
  def change
    add_column :writings, :author, :string
  end
end