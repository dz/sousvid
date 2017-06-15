class Overlay < ApplicationRecord
  DEFAULT_TYPE = "ranking"
  TYPES = ["ranking"]

  def self.valid_type?(type)
    TYPES.include? type
  end

  def verbose_name
    name_mapping = {
      "ranking" => "Ranking"
    }
    name_mapping[self.overlay_type]
  end
end
