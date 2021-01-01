require 'action_view'
# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord

    include ActionView::Helpers::DateHelper

    # COLORS = ["yellow","black","white","gray"]
    @@colors = ["yellow","black","white","gray"]
    
    validates :color, inclusion: {in: @@colors }, presence: true
    validates :sex, inclusion: {in: %w(M F)}, presence: true
    validates :name, presence: true
    validates :birth_date, presence: true
    validates :description, presence: true
    
    def age
        time_ago_in_words(birth_date)
    end

    def self.colors
        @@colors
    end
end
