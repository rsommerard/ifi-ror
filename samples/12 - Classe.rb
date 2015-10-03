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

