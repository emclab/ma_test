class CreateMaTestPosts < ActiveRecord::Migration
  def change
    create_table :ma_test_posts do |t|
      t.string :subject
      t.string :log

      t.timestamps
    end
  end
end
