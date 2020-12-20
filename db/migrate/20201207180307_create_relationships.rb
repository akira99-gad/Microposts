class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :user, foreign_key: true
      t.references :follow, foreign_key: { to_table: :users }
    # t.references(別のテーブルを参照)- {to_table: :users}外部キーとしてusersテーブルを参照する

      t.timestamps
      
      t.index [:user_id, :follow_id], unique: true
      # user_id,follow_idのペアで重複するものが保存されないようにする
    end
  end
end
