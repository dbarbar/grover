# Description
#   Display a cowboy curtis at the mention of furious or style.
#
# Dependencies:
#   None.
#
# Configuration:
#   None.
#
# Commands:
#   furious
#   style
#
# Notes:
#   None.
#
# Author:
#   jeremy-green

module.exports = (robot) ->
  robot.hear /(words?|worf)/i, (msg) ->
    subject = msg.match[1]
    if subject is 'worf'
      imageMe msg
    else
      msg.send 'NODEWORDS!!'

imageMe = (msg) ->
  msg.http('http://ajax.googleapis.com/ajax/services/search/images')
    .query(v: "1.0", rsz: '8', q: 'worf')
    .get() (err, res, body) ->
      images = JSON.parse(body)
      images = images.responseData.results
      if images.length > 0
          image = msg.random images
          msg.send "#{image.unescapedUrl}#.png"
