namespace :github do
  desc 'Connection to the web site'
  task click: :environment do
    agent = Watir::Browser.new
    agent.goto 'http://orteil.dashnet.org/cookieclicker/'
    while(true)
      agent.div(:id, 'bigCookie').click
    end
  end
end
