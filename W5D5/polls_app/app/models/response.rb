# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#
class Response < ApplicationRecord
    validates :user_id, presence: true
    validates :answer_choice_id, presence: true
    validate :not_duplicate_response
    validate :poll_author_filter

    belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User
    
    belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :AnswerChoice

    has_one :question,
    through: :answer_choice,
    source: :question

    def sibling_responses
        self.question.responses.where.not(id: self.id)
    end
    def respondent_already_answered?
        self.sibling_responses.each do |response|
            return true if self.user_id == response.user_id   
        end
        false
    end
    def not_duplicate_response
        if self.respondent_already_answered?
            errors[:user] << "answered before, duplicate response not allowed"
        end
    end
    def poll_author_filter
        if self.question.poll.author_id == self.user_id
            errors[:poll] << "author can not answer"
        end
    end
end
