class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.string :content
      t.string :image_name
      t.timestamps
    end
  end
end
