class CreateMeetup < ActiveRecord::Migration
  def change
    create_table :meetups do |t|
      t.belongs_to :user
      t.belongs_to :group

      t.timestamps
    end
  end
end
