require 'thread'





module Syskit
    module WebApp
        class Shell < Grape::API
            version 'v1', using: :header, vendor: :rock
            format :json

                          
            
            resource :actions do
                
                desc "Lists all tasks that are currently reachable on the name services"
                get do
                    Hash[tasks: "test"]
                end 
            end
            
#            resource :jobs do
#                
#                desc "Lists all tasks that are currently reachable on the name services"
#                params do
#                    optional :extended_info, type: Boolean, default: false
#                end
#                get do
#                    if params[:extended_info]
#                        Hash[tasks: "test"]
#                    else
#                        Hash[task_names: "test test"]
#                    end
#                end 
#            end
            
            
        end     
    end
end
   

