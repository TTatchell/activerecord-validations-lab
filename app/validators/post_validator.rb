class PostValidator < ActiveModel::Validator
  def validate(record)
    if record.title == nil
    else
      arr = ["Won't Believe", "Secret", "Top [number]", "Guess"]
      unless arr.any? { |string| record.title.include?(string) }
        record.errors.add :title, "#{record.title}"
      end
    end
  end
end
