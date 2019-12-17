class CreateSupervillains < ActiveRecord::Migration[6.0]
  def change
    create_table :supervillains do |t|
      t.string :name
      t.references :superhero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
