require 'nokogiri'
require 'json'
require 'open-uri'


############################################################
############## Getting GitHub Usernames ####################
############################################################

# html_file = File.open('./public/batch_476.html')
# html_doc = Nokogiri::HTML(html_file)

# students_array = []
# html_doc.search('.col-12 a').each do |element|
#   user_string = element.attribute('href').value
#   unless user_string.match(/^(\D(alumni)\D)(\w*)$/).nil?
#     match_data = user_string.match(/^(\D(alumni)\D)(\w*)$/)
#     students_array << match_data[3]
#   end
# end
# puts students_array

############################################################
############################################################


############################################################
#################### Seeding PT 476 ########################
############################################################

# Student.destroy_all
# Project.destroy_all

# puts 'Starting seed'

# project = Project.create!(name: 'Open Rehearsal',
#                 url: 'http://www.openrehearsal.co.uk/',
#                 description: 'Connect with other musicians to play the music you love')
# Student.create!(github: 'lydia-scadding', project: project)
# Student.create!(github: 'zrlstone', project: project)
# Student.create!(github: 'dantup01', project: project)
# Student.create!(github: 'AsiaCiesla', project: project)


# project = Project.create!(name: 'Gift.Me',
#                 url: 'https://gift-me-lewagon-project.herokuapp.com/',
#                 description: 'Find the perfect gift')
# Student.create!(github: 'jobrombrom', project: project)
# Student.create!(github: 'anselmkaritter', project: project)
# Student.create!(github: 'wjmont', project: project)
# Student.create!(github: 'polly-oneill', project: project)


# project = Project.create!(name: 'Your Hoxton Hero',
#                 url: 'https://your-hoxton-hero.herokuapp.com/',
#                 description: 'The community platform linking neighbours-in-need with local volunteers')
# Student.create!(github: 'KBigMac', project: project)
# Student.create!(github: 'GentianTare', project: project)
# Student.create!(github: 'ahornung93', project: project)
# Student.create!(github: 'gustavhallqvist', project: project)


# project = Project.create!(name: 'What Game?',
#                 url: 'https://what-game-app.herokuapp.com/',
#                 description: 'Have you ever asked yourself, "What Game Should I Play?"')
# Student.create!(github: 'Fishmunkee', project: project)
# Student.create!(github: 'nettecodes', project: project)
# Student.create!(github: 'AndyPandy94', project: project)
# Student.create!(github: 'natsirtrednax', project: project)


# project = Project.create!(name: 'NoQ',
#                 url: 'http://www.noqueue.online/',
#                 description: 'Turning physical queues into virtual queues')
# Student.create!(github: 'cuneyter', project: project)
# Student.create!(github: 'PawelDa', project: project)
# Student.create!(github: 'signebunke', project: project)
# Student.create!(github: 'gguillaume777', project: project)


# project = Project.create!(name: 'Turn Up',
#                 url: 'http://www.turn-up-london.com/',
#                 description: 'Turn a card and turn up')
# Student.create!(github: 'MirandaFrudd', project: project)
# Student.create!(github: 'Catfuj', project: project)
# Student.create!(github: 'JessicaTopley', project: project)
# Student.create!(github: 'Temceo', project: project)


# project = Project.create!(name: 'Find Mike',
#                 url: 'https://www.findmike.co.uk/',
#                 description: 'Your one-stop-shop for Open Mic comedy.')
# Student.create!(github: 'Freddie-Fryer', project: project)
# Student.create!(github: 'FelicityTowler', project: project)
# Student.create!(github: 'chrisbellairs', project:project)
# Student.create!(github: 'the-real-woody', project:project)


# project = Project.create!(name: 'How\'s It Growing?',
#                 url: 'http://www.hows-it-growing.com/',
#                 description: 'Start your own plant patch from scratch!')
# Student.create!(github: 'Schemalem', project: project)
# Student.create!(github: 'Alexr788', project: project)
# Student.create!(github: 'maraskowa', project: project)
# Student.create!(github: 'Razvan-Neda', project: project)


# project = Project.create!(name: 'SPOT',
#                 url: 'https://www.spot-476.com/',
#                 description: 'Revolutionise the personal training space')
# Student.create!(github: 'odayadli', project: project)
# Student.create!(github: 'Gillis247', project: project)
# Student.create!(github: 'Robertolns', project: project)
# Student.create!(github: 'gelllery2395', project: project)


# project = Project.create!(name: 'Up in the air',
#                 url: 'http://www.upintheair.io/',
#                 description: 'Easily arrange a group trip, even when everyone comes from different cities')
# Student.create!(github: 'rachel-herlihy', project: project)
# Student.create!(github: 'akilchomoko', project: project)
# Student.create!(github: 'WaynePatrickDalton', project: project)
# Student.create!(github: 'gtm19', project: project)


# project = Project.create!(name: 'batch 0')
# Student.create!(github: 'trock111jomy', project: project)

############################################################
############################################################


############################################################
################ Getting GitHub Avatars ####################
############################################################

# Student.all.each do |s|
#   url = "https://api.github.com/users/#{s.github}"
#   s_serialized = open(url).read
#   s_info = JSON.parse(s_serialized)
#   s.avatar_url = s_info['avatar_url']
#   p s.avatar_url
#   s.name = s_info['name']
#   s.save
#   sleep 5
# end

############################################################
############################################################


############################################################
################## Getting GitHub TAs ######################
############################################################

# puts 'Seeding TAs'

# html_file = File.open('./public/calendar_476.html')
# html_doc = Nokogiri::HTML(html_file)

# html_doc.search('.js-teacher-card').each do |element|
#   ta = Teacher.new()
#   ta_name = element.search('.calendar-card-info-teacher-link').text.strip
#   ta_avatar = element.search('.calendar-card-avatar img').attribute('src').value
#   ta.name = ta_name
#   ta.avatar_url = ta_avatar

#   ta_github = element.search('.calendar-card-info-teacher-link').attribute('href').value
#   unless ta_github.match(/^(\D(alumni)\D)(\S*)\//).nil?
#     match_data = ta_github.match(/^(\D(alumni)\D)(\S*)\//)
#     p match_data[3]
#     ta.github = match_data[3]
#   end
#   ta.save!
# end
# puts ta_array

############################################################
############################################################


############################################################
################## Getting Staff ######################
############################################################

puts 'Seeding Staff'

html_file = File.open('./public/staff_q1_21.html')
html_doc = Nokogiri::HTML(html_file)

html_doc.search('.city-staff .item').each do |element|
  staff = Staff.new()
  staff_name = element.search('.full-name').text.strip
  unless staff_name.empty?
    staff_avatar = element.search('.item-picture img').attribute('data-src').value
    staff.name = staff_name
    staff.avatar_url = staff_avatar
    staff.save!
  end
end

############################################################
############################################################


puts 'Seeded'
