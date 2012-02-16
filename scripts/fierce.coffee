# The next Fierce publication
#
# fierce me - The next Fierce publication will be called
#

words = [
  "Wireless",
  "Europe",
  "Developer",
  "Mobile",
  "Content",
  "Broadband",
  "Enterprise",
  "Communications",
  "IPTV",
  "Telecom",
  "Cable",
  "Online",
  "Video",
  "Biomarkers",
  "Biotech",
  "IT",
  "Research",
  "Drug",
  "Delivery",
  "Medical",
  "Devices",
  "Pharma",
  "Manufacturing",
  "Vaccines",
  "Healthcare",
  "Practice",
  "Management",
  "Health",
  "Finance",
  "Hospital",
  "Impact",
  "EMR",
  "Payer",
  "CIO",
  "Tech",
  "Watch",
  "Government",
  "Homeland",
  "Security",
  "Compliance",
  "Energy",
  "Smart",
  "Grid",
  "Enterprise",
  "VoIP",
  "WiFi",
  "Researcher",
  "",
]

module.exports = (robot) ->
  robot.respond /(fierce|fierce me)(.*)/i, (msg) ->
    msg.send "The next Fierce publication will be Fierce" + words[Math.floor(Math.random() * words.length)] + words[Math.floor(Math.random() * words.length)]

  robot.respond /(find) in (project|dir)/i, (msg) ->
    msg.send 'find . -type f | xargs grep -i "sharethis"'

