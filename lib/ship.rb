class Ship
  extend ActiveModel::Naming
  include ActiveModel::Validations

  validates :size, :inclusion => { :in => 2..4 }
  validates :start_coordinate, :format => { :with => /[a-j]{1}[1-9]{1}[0]{0,1}/}
  validates :direction, :inclusion => { :in => %w{x y} }

  def initialize(start_coordinate, size, direction)
    if !valid?
      raise "ERROR"
    end
  end


end
