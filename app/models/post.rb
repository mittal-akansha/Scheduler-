class Post < ApplicationRecord
  def publish
    update(scheduled:false , published:true)
  end
end
