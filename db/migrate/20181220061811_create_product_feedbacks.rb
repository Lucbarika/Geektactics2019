class CreateProductFeedbacks < ActiveRecord::Migration[5.2]
  def change
    create_table :product_feedbacks do |t|

      t.timestamps
    end
  end
end
