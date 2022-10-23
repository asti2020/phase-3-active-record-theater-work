class Audition < ActiveRecord::Base
    belongs_to :role

    def audition_call_back
        if Audition.hired == false
            true
        end
        true
    end
end