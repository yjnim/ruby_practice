class CreateResultsaves < ActiveRecord::Migration[5.2]
  def change
    create_table :resultsaves do |t|
      t.text :team1
      t.text :team2
      t.text :team3
      t.text :tutor1
      t.text :tutor2
      t.text :tutor3
      t.timestamps
    end
  end
end
