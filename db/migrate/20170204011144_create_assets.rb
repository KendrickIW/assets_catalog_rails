class CreateAssets < ActiveRecord::Migration[5.0]
  def change
    create_table :assets do |t|
      t.string :title
      t.text :description
      t.string :thumbnail_url

      t.timestamps
    end
  end
end
