class CreateIdols < ActiveRecord::Migration[5.1]
  def change
    create_table :idols do |t|
      t.string :name
      t.string :yomigana
      t.string :image

      t.timestamps
    end
  end
end
