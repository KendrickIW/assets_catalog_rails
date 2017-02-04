class RemoveAssetFromTags < ActiveRecord::Migration[5.0]
  def change
    remove_reference :tags, :asset, foreign_key: true
  end
end
