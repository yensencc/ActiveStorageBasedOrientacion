class AddDescriptionToUploads < ActiveRecord::Migration[5.2]
  def change
    add_column :uploads, :description, :text
    add_column :uploads, :title, :string
  end
end
