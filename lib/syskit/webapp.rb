

require 'grape'
require 'multi_json'
require 'faye/websocket'

require 'syskit/webapp/event_loop'
require 'syskit/webapp/shell_client'

# The toplevel namespace for webapp
#
# You should describe the basic idea about webapp here
require 'utilrb/logger'
module Syskit
    module WebApp
        LIB_DIR = File.expand_path(File.dirname(__FILE__))
        UI_DIR  = File.join(LIB_DIR, 'webapp', 'ui')

        extend Logger::Root('Syskit::WebApp', Logger::WARN)

        # Root for a REST API that allows to access a running Rock system
        class Root < Grape::API
            version 'v1'

            mount Shell
        end
    end
end