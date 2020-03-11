class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :main_title
      t.string :main_image_post_url
      t.text :main_content
      t.string :sub1_image_url
      t.string :subtitle_1
      t.text :content_1
      t.string :sub2_image_url
      t.string :subtitle_2
      t.text :content_2
      t.string :sub3_image_url
      t.string :subtitle_3
      t.text :content_3
      t.string :sub4_image_url
      t.string :subtitle_4
      t.text :content_4
      t.string :sub5_image_url
      t.string :subtitle_5
      t.text :content_5
      t.string :sub6_image_url
      t.string :subtitle_6
      t.text :content_6
      t.string :sub7_image_url
      t.string :subtitle_7
      t.text :content_7
      t.string :sub8_image_url
      t.string :subtitle_8
      t.text :content_8
      t.string :sub9_image_url
      t.string :subtitle_9
      t.text :content_9
      t.string :sub10_image_url
      t.string :subtitle_10
      t.text :content_10
      t.string :author
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
