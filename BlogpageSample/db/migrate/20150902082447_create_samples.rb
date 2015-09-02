class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :title
      t.text :contents

      t.timestamps null: false
    end
  end
end
