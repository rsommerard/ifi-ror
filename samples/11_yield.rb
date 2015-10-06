def maFonction
  yield
end

maFonction do
  puts "Salut"
end

maFonction do
  puts "Salut"
  puts "Comment ça va ?"
end

def uneAutreFonction
  yield
  puts "C'est super"
  yield
end

uneAutreFonction do
  puts "Vive le yield"
end

def fonctionComplexe(fin)
  yield("Amélie","elle","22ans")
  yield("Julie","elle","23ans")
  yield("Anne-Sophie","elle","50ans")
  puts fin
end

fonctionComplexe("C'est fini") do |prenom,pronom,age|
  puts "Je vous présente " + prenom + " et " + pronom + " a " + age
end
