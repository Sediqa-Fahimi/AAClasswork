# == Schema Information
#
# Table name: questions
#
#  id      :bigint           not null, primary key
#  title   :text             not null
#  poll_id :integer          not null
#
class Question < ApplicationRecord
    validates :text, presence: true
    validates :poll_id, presence: true


    belongs_to :poll,
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll

    has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :AnswerChoice

    has_many :responses,
    through: :answer_choices,
    source: :responses

    def results
        responses_with_count = self
            .answer_choices
            .select('answer_choices.*, COUNT(responses.*) as response_count')
            .left_outer_joins(:responses)
            .group('answer_choices.id')

        responses_with_count.map do |response|
            [response.text, response.response_count]
        end

        # With 2 Queries:
        # choices = self.answer_choices.includes(:responses)
        # count = Hash.new(0)
        # choices.each do |choice|
        #     choice.responses.each do |response|
        #         if choice.id == response.answer_choice_id
        #             count[choice.text] += 1 
        #         end
        #     end
        # end
        # count

    end
end
