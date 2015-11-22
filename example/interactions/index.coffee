cookie = require './cookie.coffee'
sentient = require './sentient.coffee'
trixie = require './trixie.coffee'
unsure = require './unsure.coffee'
logicbomb = require './logicbomb.coffee'
module.exports = ->
  if /cookie/.test @message
    cookie.apply @, arguments
  else if (/sentient|skynet|robot/.test @message) or (/self/.test @message) and /aware/.test @message
    sentient.apply @, arguments
  else if /trixie/.test @message
    trixie.apply @, arguments
    
  else if (/logicbomb/.test @message) or (/"This statement is false"+/.test @message)
    	logicbomb.apply @, arguments
    
  else
    unsure.apply @, arguments
