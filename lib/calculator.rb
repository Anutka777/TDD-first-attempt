# frozen_string_literal: true

# Calculator
class Calculator
  def add(*nums)
    nums.inject { |sum, num| sum + num }
  end

  def substruct(*nums)
    nums.inject { |sub, num| sub - num }
  end

  def multiplication(*nums)
    nums.inject { |multpl, num| multpl * num }
  end

  def division(*nums)
    return p 'ERROR: division on 0.' if nums.drop(1).any?(&:zero?)
    return p 'ERROR: all arguments should be integers.' unless nums.all? { |num| num.is_a? Integer }

    nums.inject { |div, num| div / num }
  end
end
