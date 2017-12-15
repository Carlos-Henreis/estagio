class Travel < ApplicationRecord

  validates :name,
            presence: true,
            length: { minimum: 5 }

  validates :phone,
            presence: true,
            format: { with: /\([0-9]{2}\)9{0,1}[0-9]{4}-[0-9]{4}/}

  validates :dateTo,
            presence: true

  validates :dateFrom,
            presence: true

  validate :datafromvalitor

  validate :datatovalitor

  validates :origin,
            presence: true

  validates :destination,
            presence: true

  validates :numberp,
            presence: true,
            numericality: { greater_than: 0 }

  def datafromvalitor
     if dateFrom.present? && dateFrom < Date.today
       errors.add(:dataFrom, "Date From error")
     end
   end

   def datatovalitor
      if dateTo.present? && dateTo < dateFrom
        errors.add(:dateTo, "Date to error")
      end
    end

end
