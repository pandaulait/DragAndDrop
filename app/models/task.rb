class Task < ApplicationRecord
include RankedModel
ranks :row_order
belongs_to :user
end
