module Dafaq
  class Faq
    include Mongoid::Document
    before_create :set_position

    field :question, type: String
    field :answer, type: String
    field :position, type: Integer

    protected
    def set_position
      self[:position] = Faq.count
    end
  end
end
