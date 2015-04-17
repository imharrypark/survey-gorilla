class CreateQuestionsTable < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :description, null: false
      t.references :survey, null: false
      t.timestamps
    end
  end
end
