class AddVIdeoToTool < ActiveRecord::Migration[5.2]
  def change
    remove_column :tools, :audio_url
    add_column :tools, :video_url, :string
  end
end
