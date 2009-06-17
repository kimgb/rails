class Customer < Struct.new(:name, :id)
  extend ActiveModel::Naming

  def to_param
    id.to_s
  end
end

class BadCustomer < Customer
end

class GoodCustomer < Customer
end

module Quiz
  class Question < Struct.new(:name, :id)
    extend ActiveModel::Naming

    def to_param
      id.to_s
    end
  end
end
