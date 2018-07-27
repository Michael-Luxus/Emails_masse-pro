class Mailer

gmail = Gmail.connect("wintzmarie67@gmail.com", "thp19juillet")


Gmail.connect("wintzmarie67@gmail.com", "thp19juillet") do |gmail|
 puts gmail.logged_in?
end


#my_hash = JSON.parse(File.read('db/emails.JSON'))


my_hash.each do |k,v|


gmail.deliver do
  to v
  subject "Wooliloup THP c'est trop coolicool !!"
  text_part do
    body 
  end
  html_part do
    content_type 'text/html; charset=UTF-8'
    body "<p>Bonjour,</p>
<p>Je m'appelle Marie, je suis élève à The Hacking Project, une formation au code gratuite, sans locaux, sans sélection, sans restriction géographique. La pédagogie de ntore école est celle du peer-learning, où nous travaillons par petits groupes sur des projets concrets qui font apprendre le code. Le projet du jour est d'envoyer (avec du codage) des emails aux mairies pour qu'ils nous aident à faire de The Hacking Project un nouveau format d'éducation pour tous.
</p>
<p>Déjà 500 personnes sont passées par The Hacking Project. Est-ce que la mairie de #{k} veut changer le monde avec nous ?
</p>

<p>Charles, co-fondateur de The Hacking Project pourra répondre à toutes vos questions : 06.95.46.60.80</p>"
  end
 # add_file "/path/to/some_image.jpg"
end
sleep (4)
end

gmail.logout



















end