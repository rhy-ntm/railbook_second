class Review < ActiveRecord::Base
  belongs_to :boook
  
  # その他バリデーション
  validate :my_validation_method
  
private
  
  # 追加バリデーション
  def my_validation_method
    boook_title = Boook.find_by(id: boook_id)
    if boook_title.blank?
      errors.add(:boook_id, "はマスタに存在しません")
    end
  end
  
end
