class Role < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :movie



    # def actor_role
    #    roless =  Actor.all.select do | actor_id |
    #         actor_id.role == self
    #     end
    #     roless.map do | 
    #     end
    # end

    

end
