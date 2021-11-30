#Programa para definir si un mensaje tiene los parentesis desbalanceados o no

def balance(string)
 if string.empty? || string.length >= 1 && string.match?(/:\(|:\)|\([a-zA-Z:\s]+\)|[a-zA-Z:\s]+|:\(|:\)/i)
  return "balanceado"
 else
  return "desbalanceado"
 end
end

#puts balance("hola") #balanceado
#puts balance("(hola)") #balanceado
#puts balance("(()") #desbalanceado
#puts balance("(:)") #balanceado
#puts balance("no voy (:()") #balanceado
#puts balance("hoy pm: fiesta :):)") #balanceado
#puts balance("(hola :)") #desbalanceado
#puts balance("hola :((")
#puts balance("a (b (c (d) c) b) a :)") #balanceado

#a. "hola" -> balanceado
#b. "(hola)" -> balanceado
#c. "(()" -> desbalanceado
#d. "(:)" -> balanceado (ej, si consideramos el mensaje como un ":" [regla 2] entre paréntesis [regla 3])
#e. "no voy (:()" -> balanceado (ej, si consideramos un emoticón triste [regla 5] entre paréntesis [regla 3])
#f. "hoy pm: fiesta :):)" -> balanceado
#g. ":((" -> desbalanceado
#h. "a (b (c (d) c) b) a :)" -> balanceado (ej, si el último paréntesis es en realidad un emoticón)
