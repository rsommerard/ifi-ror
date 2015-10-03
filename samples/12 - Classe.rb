class Personne
  def initialize(prenom,nom,age)
    @prenom = prenom
    @nom = nom
    @age = age
  end
  def getNom
    @nom
  end
  def getPrenom
    @prenom
  end
  def getAge
    @age
  end
  def setNom(nom)
    @nom = nom
  end
  def setPrenom(prenom)
    @prenom = prenom
  end
  def setAge(age)
    @age = age
  end
end

p = Personne.new("Amélie","Dupré",23)
p.class
p.setNom("Dupont")
p.setPrenom("Julie")
p.setAge(20)
p.getAge
p.getNom
p.getPrenom()

p.respond_to?("age")
p.respond_to?("setAge")
p.respond_to?("setPrenom")

tab = [Personne.new("Tom","Dupont",30),Personne.new("Léa","David",12),Personne.new("Léa","Dupont",26),Personne.new("Amélie","David",60)] 
tab.sort do |a,b|
  if a.getNom == b.getNom
    if a.getPrenom == b.getPrenom
      0
    elsif a.getPrenom < b.getPrenom
      -1
    else
      1
    end
  elsif a.getNom < b.getNom
    -1
  else
    1
  end
end
