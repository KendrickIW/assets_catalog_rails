class CreateAssetTags < ActiveRecord::Migration[5.0]
  def change
    create_table :asset_tags do |t|
      t.references :tag
      t.references :asset

      t.timestamps
    end
  end
end
