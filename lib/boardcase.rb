class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :value, :box_identity 

  
  def initialize (box_identity)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @value = " "
    @box_identity = box_identity
  end

end