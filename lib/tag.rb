class Tag < ActiveRecord::Base
  has_and_belongs_to_many(:recipes)

  class << self
    def make_all(list)
      list.split(",").map(&:stip).map do |tag_name|
        if tage = Tag.find_by_name(tag_name)
          tag
        else
          Tag.creat({:name => tag_name})
        end
      end
    end
  end
end
