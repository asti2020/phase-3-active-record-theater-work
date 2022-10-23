class Role < ActiveRecord::Base
    has_many :auditions

    def role_actor
        auditions.map do |audi|
            audi.actor
        end
    end

    def role_location
        auditions.map do |audiloc|
            audiloc.location
        end
    end

    def role_lead
        # auditions.filter do |rolelead|
        #     rolelead.hired == true
        # end
        auditions.find_by(hired: true) ? auditions.find_by(hired: true) : "no actor has been hired for this role"
    end

    def role_undertudy
        auditions.where(hired: true).second ? role_location : "no actor has been hired for understudy for this role"
    end

end