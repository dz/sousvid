class Overlay < ApplicationRecord
  DEFAULT_TYPE = "ranking"
  TYPES = ["ranking"]

  serialize :data, JSON

  def self.valid_type?(type)
    TYPES.include? type
  end

  def verbose_name
    name_mapping = {
      "ranking" => "Ranking"
    }
    name_mapping[self.overlay_type]
  end

  def json_schema
    schema_mapping = {
      "ranking" => {
        "type" => "object",
        "title" => "Ranking",
        "properties" => {
          "ranked_items" => {
            "type" => "array",
            "format" => "table",
            "title" => "Ranked Items",
            "uniqueItems" => true,
            "items" => {
              "type" => "object",
              "title" => "Item",
              "properties" => {
                "name" => {
                  "type": "string"
                }
              }
            }
          }
        }
      }
    }
    schema_mapping[self.overlay_type].to_json
  end
end
