class AddNameAndSummaryAndUrlAndPublishedatAndGuidToWritings < ActiveRecord::Migration
  def change
    add_column :writings, :name, :string
    add_column :writings, :summary, :text
    add_column :writings, :url, :string
    add_column :writings, :publishedat, :datetime
    add_column :writings, :guid, :string
  end
end
