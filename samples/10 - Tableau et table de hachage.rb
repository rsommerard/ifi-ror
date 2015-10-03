tab = ["Lucie","Léo","Juliette","Anne-Sophie","Antoine"]

tab.each do |v|
  puts v
end

s = "Amélie Julie Sophie Béatrice"
tab = s.split(" ")

tab = tab.sort
tab

tab[1]
tab[2]

tab.length

tab = ["léa", "léo", "romain", "julie", "justine"]
tab.each do |v|
  v = v.capitalize
  puts v
end
tab

tab.length.times do |i|
  tab[i] = tab[i].capitalize
end
tab

tab = {
  "prenom1" => "Léa",
  "prenom2" => "Léo",
  "prenom3" => "Antoine",
  10 => "Julie",
  20.3 => 6
}

tab["prenom1"]
tab[10]
tab[20.3]

tab["prenom4"] = "Amélie"
tab["prenom4"]
