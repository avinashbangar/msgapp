class CreateMessage < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :meetup
      t.text :msg

      t.timestamps
    end

  end
end
