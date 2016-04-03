class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true
      t.string :name
      t.string :keywords

      t.timestamps
    end
  end
end
