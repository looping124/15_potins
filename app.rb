require 'bundler'
Bundler.require

require_relative 'lib/controller'
require_relative 'lib/gossip'
require_relative 'lib/router'
require_relative 'lib/view'

router = Router.new
router.perform

