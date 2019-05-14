; Sun May 12 20:10:01 CEST 2019
;
;+ (version "3.3.1")
;+ (build "Build 430")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Cocci%C3%B3
;+		(comment "Manera com cuinem el ingredient")
		(type SYMBOL)
		(allowed-values Planxa Al_forn Fregit Fresc Saltejat Bullit)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ingredient_general
;+		(comment "Ingredient general al que fa referència aquest ingredient concret.")
		(type INSTANCE)
;+		(allowed-classes InfoIngredient)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot GrauRecomanacio
;+		(comment "Ens indica com de recomanable es que una persona en mengui")
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ingredients
;+		(comment "Ingredients principals del plat")
		(type INSTANCE)
;+		(allowed-classes IngredientConcret)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Tipus_nutrient
;+		(comment "Indica el tipus de nutrient que estem tractant (dins de tota la familia general de nutrients i micronutrients).\n\nEls greixos mono o poliinsaturats són positius per la alimentació. Els greixos trans no.")
		(type SYMBOL)
		(allowed-values Aigua Minerals Proteines Vitamines Fibra Hidrats_de_carboni Greixos Sucre)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Familia
;+		(comment "Indica a la familia general d'aliments a la que pertany.")
		(type SYMBOL)
		(allowed-values Meat Fruits Soups Pasta Nut Herbs Dairy_Eggs Vegetables Legumes Snacks Baked Fish Fats_Oils Sweets Breakfast_Cereals)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valor_energetic%28kcal%29
;+		(comment "Nombre de kilocaloríes")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Esmorzar
;+		(comment "Indica si és un plat per a un esmorzar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Temporada
		(type SYMBOL)
		(allowed-values Hivern Primavera Estiu Tardor)
		(default Hivern Primavera Estiu Tardor)
		(cardinality 1 4)
		(create-accessor read-write))
	(multislot Tipus_plat
;+		(comment "Indica si el plat és un 1r, 2n, postres o beguda (pot ser varios)")
		(type SYMBOL)
		(allowed-values 1r 2n Postres)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nom
;+		(comment "Nom del plat")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Proteines
;+		(comment "Nombre de proteines")
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sopar
;+		(comment "Indica si és un plat per a un sopar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Dinar
;+		(comment "Indica si és un plat per a un dinar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Quantitat_nutrient
;+		(comment "Valor en grams de nutrient")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Nutrients
;+		(comment "Aqui contenim les instàncies dels diferents nutrients que conté")
		(type INSTANCE)
;+		(allowed-classes Nutrient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Quantitat
;+		(comment "Quantitat que porta d'un ingredient general")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nom_ingredient
;+		(comment "Nom del ingredient")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Hidrats+de+carboni
;+		(comment "Nombre d'hidrats de carboni")
		(type FLOAT)
		(default 0.0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Apat
;+		(comment "Indica si pot ser un plat per esmorzar, dinar o sopar (o diversos)")
		(type SYMBOL)
		(allowed-values Esmorzar Dinar Sopar)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass Plat
	(is-a USER)
	(role concrete)
	(multislot Tipus_plat
;+		(comment "Indica si el plat és un 1r, 2n, postres o beguda (pot ser varios)")
		(type SYMBOL)
		(allowed-values 1r 2n Postres)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Apat
;+		(comment "Indica si pot ser un plat per esmorzar, dinar o sopar (o diversos)")
		(type SYMBOL)
		(allowed-values Esmorzar Dinar Sopar)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Nom
;+		(comment "Nom del plat")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot GrauRecomanacio
;+		(comment "Ens indica com de recomanable es que una persona en mengui")
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Ingredients
;+		(comment "Ingredients principals del plat")
		(type INSTANCE)
;+		(allowed-classes IngredientConcret)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Temporada
		(type SYMBOL)
		(allowed-values Hivern Primavera Estiu Tardor)
		(default Hivern Primavera Estiu Tardor)
		(cardinality 1 4)
		(create-accessor read-write)))

(defclass InfoIngredient
	(is-a USER)
	(role concrete)
	(multislot Nutrients
;+		(comment "Aqui contenim les instàncies dels diferents nutrients que conté")
		(type INSTANCE)
;+		(allowed-classes Nutrient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Valor_energetic%28kcal%29
;+		(comment "Nombre de kilocaloríes")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nom_ingredient
;+		(comment "Nom del ingredient")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Familia
;+		(comment "Indica a la familia general d'aliments a la que pertany.")
		(type SYMBOL)
		(allowed-values Meat Fruits Soups Pasta Nut Herbs Dairy_Eggs Vegetables Legumes Snacks Baked Fish Fats_Oils Sweets Breakfast_Cereals)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Temporada
		(type SYMBOL)
		(allowed-values Hivern Primavera Estiu Tardor)
		(default Hivern Primavera Estiu Tardor)
		(cardinality 1 4)
		(create-accessor read-write)))

(defclass IngredientConcret
	(is-a USER)
	(role concrete)
	(single-slot Cocci%C3%B3
;+		(comment "Manera com cuinem el ingredient")
		(type SYMBOL)
		(allowed-values Planxa Al_forn Fregit Fresc Saltejat Bullit)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Quantitat
;+		(comment "Quantitat que porta d'un ingredient general")
		(type FLOAT)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Ingredient_general
;+		(comment "Ingredient general al que fa referència aquest ingredient concret.")
		(type INSTANCE)
;+		(allowed-classes InfoIngredient)
;+		(cardinality 1 1)
		(create-accessor read-write)))

(defclass Nutrient
	(is-a USER)
	(role concrete)
	(single-slot Tipus_nutrient
;+		(comment "Indica el tipus de nutrient que estem tractant (dins de tota la familia general de nutrients i micronutrients).\n\nEls greixos mono o poliinsaturats són positius per la alimentació. Els greixos trans no.")
		(type SYMBOL)
		(allowed-values Aigua Minerals Proteines Vitamines Fibra Hidrats_de_carboni Greixos Sucre Colesterol)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Quantitat_nutrient
;+		(comment "Valor en grams de nutrient")
		(type FLOAT)
;+		(cardinality 1 1)
		(create-accessor read-write)))



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIES					 		---------- 								INSTANCIES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(definstances instancies

([I90560] of InfoIngredient
    (Familia Fish)
    (Nom_ingredient "Mollusks, snail, raw")
    (Nutrients [I90560N0] [I90560N1] [I90560N2] [I90560N3] [I90560N4] [I90560N5] [I90560N6] [I90560N7] [I90560N8])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 90))

([I90560N0] of  Nutrient
    (Quantitat_nutrient 79.2)
    (Tipus_nutrient Aigua))
([I90560N1] of  Nutrient
    (Quantitat_nutrient 988.9)
    (Tipus_nutrient Minerals))
([I90560N2] of  Nutrient
    (Quantitat_nutrient 16.1)
    (Tipus_nutrient Proteines))
([I90560N3] of  Nutrient
    (Quantitat_nutrient 105.63)
    (Tipus_nutrient Vitamines))
([I90560N4] of  Nutrient
    (Quantitat_nutrient 0.0)
    (Tipus_nutrient Fibra))
([I90560N5] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I90560N6] of  Nutrient
    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Greixos))
([I90560N7] of  Nutrient
    (Quantitat_nutrient 50.0)
    (Tipus_nutrient Colesterol))
([I90560N8] of  Nutrient
    (Quantitat_nutrient 0.0)
    (Tipus_nutrient Sucre))

)




;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					TEMPLATES					 		---------- 								TEMPLATES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; deftemplat para almacenar la informacion que se infiere del expediente

;INFORMACION PARA LA SOLUCION FINAL
;;; deftemplat para almacenar la informacion de la solucion final ordenada
;;; distinguimos entre tipos de platos. Los ordenamos y luego los iremos mezclando en orden

(deftemplate MAIN::solucionOrdenadaE "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)

(deftemplate MAIN::solucionOrdenadaDP "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)

(deftemplate MAIN::solucionOrdenadaDS "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)

(deftemplate MAIN::solucionOrdenadaSP "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)

(deftemplate MAIN::solucionOrdenadaSS "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)

(deftemplate MAIN::solucionOrdenadaP "solucio final on ordenem tots els plats"
	(slot posicio (type INTEGER))
	(slot plat (type INSTANCE) (allowed-classes Plat))
)


(deftemplate MAIN::menuDiari "solucio final on ordenem tots els plats"
    (slot dia (type INTEGER))
    ;DIA 1
	;esmorzar
	(slot esmorzar (type INSTANCE) (allowed-classes Plat))

	;dinar
	  (slot dinarPrimer (type INSTANCE) (allowed-classes Plat))
    (slot dinarSegon (type INSTANCE) (allowed-classes Plat))
    (slot dinarPostres (type INSTANCE) (allowed-classes Plat))

	;dinar
	  (slot soparPrimer (type INSTANCE) (allowed-classes Plat))
    (slot soparSegon (type INSTANCE) (allowed-classes Plat))
    (slot soparPostres (type INSTANCE) (allowed-classes Plat))

)

(deftemplate MAIN::restriccionsNutricionalsDiaries "aqui indiquem les diferents restriccions nutricionals d'un horari (kcal i la resta grams)"
	(slot kilocalories (type FLOAT) (default 0.0))
	(slot vitamines (type FLOAT)(default 0.0))
	(slot hidratsCarboni (type FLOAT)(default 0.0))
	(slot greixosMaxims (type FLOAT)(default 0.0))
	(slot proteines (type FLOAT)(default 0.0))
    (slot fibra (type FLOAT)(default 0.0))
	(slot minerals (type FLOAT)(default 0.0))
	(slot sucre (type FLOAT)(default 0.0))
	(slot colesterol (type FLOAT)(default 0.0))
)


(deftemplate MAIN::infoNutricionalPlat "aqui mantindrem comptatge dels nutrients que té un plat"
	(slot plat (type INSTANCE) (allowed-classes Plat))
	(slot Aigua (type FLOAT) (default 0.0))
	(slot Minerals (type FLOAT) (default 0.0))
	(slot Proteines (type FLOAT) (default 0.0))
	(slot Vitamines (type FLOAT) (default 0.0))
	(slot Fibra (type FLOAT) (default 0.0))
	(slot Hidrats_de_carboni (type FLOAT) (default 0.0))
	(slot Greixos (type FLOAT) (default 0.0))
    (slot Sucre (type FLOAT) (default 0.0))
    (slot Colesterol (type FLOAT) (default 0.0))
    (slot Energia (type FLOAT) (default 0.0))
)

(deftemplate MAIN::infoNutricionalMenu "aqui mantindrem comptatge dels nutrients que té un plat"
	(slot Aigua (type FLOAT) (default 0.0))
	(slot Minerals (type FLOAT) (default 0.0))
	(slot Proteines (type FLOAT) (default 0.0))
	(slot Vitamines (type FLOAT) (default 0.0))
	(slot Fibra (type FLOAT) (default 0.0))
	(slot Hidrats_de_carboni (type FLOAT) (default 0.0))
	(slot Greixos (type FLOAT) (default 0.0))
    (slot Sucre (type FLOAT) (default 0.0))
    (slot Colesterol (type FLOAT) (default 0.0))
    (slot Energia (type FLOAT) (default 0.0))
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general
(deffunction MAIN::pregunta-general (?pregunta)
    (printout t crlf)
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
    (printout t crlf)
	(format t "%s " ?pregunta)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta
(deffunction MAIN::pregunta-lista (?pregunta)
    (printout t crlf)
	(format t "%s" ?pregunta)
	(bind ?resposta (readline))
	(bind ?res (str-explode ?resposta))
	?res
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MENSAJES					 		---------- 								MENSAJES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Mensajes a las clases
;;; Aqui aun podem completar mas para que imprima mas información. Dependerá de como se muestre por pantalla


(defmessage-handler MAIN::Plat imprimeixNom primary()
	(printout t " Plat:  " ?self:Nom crlf)
)

(defmessage-handler MAIN::InfoIngredient imprimeixNom primary()
	(printout t ?self:Nom_ingredient crlf)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					 MAIN					 		---------- 								MAIN
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Este es el modulo principal, en este se comprobara l existencia del estudiante
;; en el conjunto de instancias del sistema

(defmodule MAIN
	(export ?ALL))

(defrule MAIN::primeraRegla "regla inicial"
	?f <- (initial-fact)
	(not (FI))
	(not(imprimir))
	=>
	(reset)
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "-----------     Weekly menu calculation system     -----------" crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t crlf)
	(assert (nou_usuari))	;;aixo ens permet crear un fact
	(focus PREGUNTES)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE PREGUNTAS				 		---------- 							MODULO DE PREGUNTAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este se le haran las preguntas al estudiantes
;; para obtener la informacion de sus restricciones y/o preferencias

(defmodule PREGUNTES
		(import MAIN ?ALL)
		(export ?ALL)
)

(defrule PREGUNTES::preguntar_sexe "regla para saber el sexo del usuario"
	(nou_usuari)
	(not(FI))
	=>
	(bind ?q (pregunta-general "What is your gender? [M F]:  "))
	(switch ?q
		(case M then (assert(Genere M)))
		(case F then (assert(Genere F)))
	)
)

(defrule PREGUNTES::preguntar_edat "regla para saber la edat"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-numerica "How old are you?" 0 120))
        (assert(Edat ?q))
)

(defrule PREGUNTES::preguntar_pes "regla para saber el pes"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-numerica "How much do you weight?" 30 150))
        (assert(Pes ?q))
)

(defrule PREGUNTES::preguntar_altura "regla para saber la altura"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-numerica "How tall are you? (in cm)" 120 220))
        (assert(Altura ?q))
)


(defrule PREGUNTES::preguntar_activitat_fisica "regla para saber la cantidad de actividad física que realiza el usuario"
	(nou_usuari)
	(not(FI))
	=>
	(bind ?q (pregunta-numerica "How often do you practice sport? [barely(1) regularly(2) often(3) very-often(4)]:  " 1 4))
	(switch ?q
		(case 1 then (assert(Activitat 1.2)))
		(case 2 then (assert(Activitat 1.375)))
		(case 3 then (assert(Activitat 1.55)))
		(case 4 then (assert(Activitat 1.725)))
	)
)

(defrule PREGUNTES::preguntar_temporada "regla para saber la temporada del año en que nos encontramos"
	(nou_usuari)
	(not(FI))
	=>
	(bind ?q (pregunta-numerica "What season of the year are we in? [Winter(1) Spring(2) Summer(3) Autumn(4)]:  " 1 4))
	(switch ?q
		(case 1 then (assert(Temporada Hivern)))
		(case 2 then (assert(Temporada Primavera)))
		(case 3 then (assert(Temporada Estiu)))
		(case 4 then (assert(Temporada Tardor)))
	)
)

(defrule PREGUNTES::preguntar_vegetaria_o_vega "regla para saber si es vegetaria, vegà o no"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-general "Are you vegetaria or vegan? [Yes(Y) No(N)]:  " ))
		(if (eq ?q Y) then
			(assert(VegaOVegetaria)))
)

(defrule PREGUNTES::preguntar_quin_vegetaria_vega "regla para que es, vegetaria o vega"
	(nou_usuari)
	(not(FI))
	(VegaOVegetaria)
	=>
		(bind ?q (pregunta-numerica "Which one are you specifically? [Vegeterian(1) Vegan(2)]:  " 1 2))
		(switch ?q
			(case 1 then (assert(Restriccio Meet)) (assert(Restriccio Fish))(assert (RestriccionsAfegides)))
			(case 2 then (assert(Restriccio Meet)) (assert(Restriccio Fish)) (assert(Restriccio Dairy_Eggs))(assert (RestriccionsAfegides)))
		)
)



;DEFINIM LES RESTRICCIONS
(defrule PREGUNTES::preguntar_alergies_restriccions "regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-general "Do you have any restriction of food you MUST NOT eat? [Yes(Y) No(N)]:  "))
		(switch ?q
			(case Y then (assert(Restriccio S)))
			(case N then (assert(Restriccio N)))
		)
)

(defrule PREGUNTES::definir_alergies_restriccions"regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(Restriccio S)
	(not(FI))
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Restrictions: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fruit " crlf)
	(printout t "3. Soups" crlf)
	(printout t "4. Pasta" crlf)
	(printout t "5. Nut" crlf)
	(printout t "6. Herbs " crlf)
	(printout t "7. Dairy or eggs " crlf)
	(printout t "8. Vegetables" crlf)
	(printout t "9. Legumes" crlf)
	(printout t "10. Snacks" crlf)
	(printout t "11. Backed products " crlf)
	(printout t "12. Fish " crlf)
	(printout t "13. Fats or oils" crlf)
	(printout t "14. Sweets" crlf)
	(printout t "15. Breakfast cereals" crlf)
	(printout t "16. Specific food" crlf)
	(printout t crlf)
	(bind ?rest (pregunta-lista "Separate your answer with a blank between each identifier (can be multiple) :"))

	(progn$ (?it ?rest)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(Restriccio Meet)))
			(case 2 then   (assert(Restriccio Fruit)))
			(case 3 then   (assert(Restriccio Soups)))
			(case 4 then   (assert(Restriccio Pasta)))
			(case 5 then   (assert(Restriccio Nut)))
			(case 6 then   (assert(Restriccio Herbs)))
			(case 7 then   (assert(Restriccio Dairy_Eggs)))
			(case 8 then   (assert(Restriccio Vegetables)))
			(case 9 then   (assert(Restriccio Legumes)))
			(case 10 then   (assert(Restriccio Snacks)))
			(case 11 then   (assert(Restriccio Backed)))
			(case 12 then   (assert(Restriccio Fish)))
			(case 13 then   (assert(Restriccio Fats_Oils)))
			(case 14 then   (assert(Restriccio Sweats)))
			(case 15 then   (assert(Restriccio Breakfast_Cereals)))
			(case 16 then
                (printout t crlf)
                (bind ?q (pregunta-general "Write the name of the product (in singular if possible):  "))
                (assert (Restriccio ?q)))
        )
    )
  (assert(RestriccionsAfegides))
)

;DEFINIM LES PREFERÈNCIES
(defrule PREGUNTES::preguntar_preferencies_negatives"regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-general "Do you have food you would RATHER NOT eat [Yes(Y) No(N)]:  "))
		(switch ?q
			(case Y then (assert(PreferenciesN S)))
			(case N then (assert(PreferenciesN N)))
		)
)

(defrule PREGUNTES::definir_preferencies_negatives "regla para saber si tiene algun tipo de preferencia de alimentos a no consumir"
	(nou_usuari)
	(PreferenciesN S)
	(not(FI))
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Preferences of food you would rather not eat: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fruit " crlf)
	(printout t "3. Soups" crlf)
	(printout t "4. Pasta" crlf)
	(printout t "5. Nut" crlf)
	(printout t "6. Herbs " crlf)
	(printout t "7. Dairy or eggs " crlf)
	(printout t "8. Vegetables" crlf)
	(printout t "9. Legumes" crlf)
	(printout t "10. Snacks" crlf)
	(printout t "11. Backed products " crlf)
	(printout t "12. Fish " crlf)
	(printout t "13. Fats or oils" crlf)
	(printout t "14. Sweets" crlf)
	(printout t "15. Breakfast cereals" crlf)
	(printout t "16. Specific food" crlf)
	(printout t crlf)
	(bind ?pref (pregunta-lista "Separate your answer with a blank between each identifier (in case there are several) : "))

	(progn$ (?it ?pref)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(PreferenciaN Meet)))
			(case 2 then   (assert(PreferenciaN Fruit)))
			(case 3 then   (assert(PreferenciaN Soups)))
			(case 4 then   (assert(PreferenciaN Pasta)))
			(case 5 then   (assert(PreferenciaN Nut)))
			(case 6 then   (assert(PreferenciaN Herbs)))
			(case 7 then   (assert(PreferenciaN Dairy_Eggs)))
			(case 8 then   (assert(PreferenciaN Vegetables)))
			(case 9 then   (assert(PreferenciaN Legumes)))
			(case 10 then   (assert(PreferenciaN Snacks)))
			(case 11 then   (assert(PreferenciaN Backed)))
			(case 12 then   (assert(PreferenciaN Fish)))
			(case 13 then   (assert(PreferenciaN Fats_Oils)))
			(case 14 then   (assert(PreferenciaN Sweats)))
			(case 15 then   (assert(PreferenciaN Breakfast_Cereals)))
			(case 16 then
                (printout t crlf)
                (bind ?q (pregunta-general "Write the name of the product (in singular if possible):  "))
                (assert (PreferenciaN ?q)))

        )
	)
  (assert(PreferenciesAfegidesN))
)

;DEFINIM LES PREFERÈNCIES
(defrule PREGUNTES::preguntar_preferencies_positives "regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-general "Do you have food you would LIKE to eat [Yes(Y) No(N)]:  "))
		(switch ?q
			(case Y then (assert(PreferenciesP S)))
			(case N then (assert(PreferenciesP N)))
		)
)


(defrule PREGUNTES::definir_preferencies_positives "regla para saber si tiene algun tipo de preferencia de alimentos a no consumir"
	(nou_usuari)
	(PreferenciesP S)
	(not (MalaltiesAfegides))
	(not(FI))
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Preferences of food you would like to eat: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fruit " crlf)
	(printout t "3. Soups" crlf)
	(printout t "4. Pasta" crlf)
	(printout t "5. Nut" crlf)
	(printout t "6. Herbs " crlf)
	(printout t "7. Dairy or eggs " crlf)
	(printout t "8. Vegetables" crlf)
	(printout t "9. Legumes" crlf)
	(printout t "10. Snacks" crlf)
	(printout t "11. Backed products " crlf)
	(printout t "12. Fish " crlf)
	(printout t "13. Fats or oils" crlf)
	(printout t "14. Sweets" crlf)
	(printout t "15. Breakfast cereals" crlf)
	(printout t "16. Specific food" crlf)
	(printout t crlf)
	(bind ?pref (pregunta-lista "Separate your answer with a blank between each identifier (in case there are several) : "))

	(progn$ (?it ?pref)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(PreferenciaP Meet)))
			(case 2 then   (assert(PreferenciaP Fruit)))
			(case 3 then   (assert(PreferenciaP Soups)))
			(case 4 then   (assert(PreferenciaP Pasta)))
			(case 5 then   (assert(PreferenciaP Nut)))
			(case 6 then   (assert(PreferenciaP Herbs)))
			(case 7 then   (assert(PreferenciaP Dairy_Eggs)))
			(case 8 then   (assert(PreferenciaP Vegetables)))
			(case 9 then   (assert(PreferenciaP Legumes)))
			(case 10 then   (assert(PreferenciaP Snacks)))
			(case 11 then   (assert(PreferenciaP Backed)))
			(case 12 then   (assert(PreferenciaP Fish)))
			(case 13 then   (assert(PreferenciaP Fats_Oils)))
			(case 14 then   (assert(PreferenciaP Sweats)))
			(case 15 then   (assert(PreferenciaP Breakfast_Cereals)))
			(case 16 then
                (printout t crlf)
                (bind ?q (pregunta-general "Write the name of the product (in singular if possible):  "))
                (assert (PreferenciaP ?q)))
        )
	)
  (assert(PreferenciesAfegidesP))
)


;PREGUNTEM SI TÉ ALGUNA DE LES SEGUENTS MALALTIES
(defrule PREGUNTES::definir_malalties "regla para saber si tiene alguna de las siguientes enfermedades"
	(nou_usuari)
	(not(FI))
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Indicate whether you have any of these illneses: " crlf)
	(printout t "1. Osteoporosis " crlf)
	(printout t "2. Articular problems " crlf)
	(printout t "3. Diabetis" crlf)
	(printout t "4. Hipertension" crlf)
	(printout t "5. Non of the above" crlf)
	(bind ?malalties (pregunta-lista "Separate your answer with a blank between each identifier (in case there are several) : "))

	(progn$ (?it ?malalties)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(Osteoporosis)))
			(case 2 then   (assert(Problemes articulars)))
			(case 3 then   (assert(Diabetis)))
			(case 4 then   (assert(Hipertensio)))
		)
	)
  (assert(MalaltiesAfegides))
)

(defrule finalPreguntes "regla para pasar al modulo siguiente"
      (nou_usuari)
      (not(FI))
      =>
        (printout t crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t "------------------           Debug           ------------------" crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t crlf)

	  (printout t crlf)
	  (printout t "Passem al modul de inferir dades: "crlf)
      (focus INFERIR_DADES)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE INFERENCIAS DE DATOS				---------- 				MODULO DE INFERENCIAS DE DATOS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;AQUI OMPLIM LES RESTRICCIONS NUTRICIONALS

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas
(defmodule INFERIR_DADES
		(import MAIN ?ALL)
		(import PREGUNTES ?ALL)
		(export ?ALL)
)

(defrule INFERIR_DADES::calcularNecessitatsNutricionals "Calculem els valors nutricionals"
    (nou_usuari)
    (Genere ?g)
    (Altura ?a)
    (Edat ?e)
    (Pes ?p)
    (Activitat ?v)
    =>
    ;REVISAR SI CAL FER-HO PER SEPARAT O TOT JUNT
    (switch ?g
		(case M then (bind ?energia (* (- (+ (* 10 ?p) (* 6.25 ?a) 5) (* 5 ?e)) ?v))
                     (bind ?vitamines 0.071)) ;suma de totes les vitamines
		(case F then (bind ?energia (* (- (+ (* 10 ?p) (* 6.25 ?a)) (* 5 ?e) 161 ) ?v))
                     (bind ?vitamines 0.07088)) ;suma de totes les vitamines necessaries (A,D,E,K,B12,C)
    )

    ;?energia sera la quantitat d'energia que necessitem diariament en kcal
    (bind ?prot (/ (* ?energia 0.15) 4)) ;15% de la energia
    (bind ?colesterolMax 0.3) ; < 0.3g diariament
    (bind ?hidrats (/ (* ?energia 0.55) 4)) ;15% de la energia
    (bind ?greixosMaxims (/ (* ?energia 0.35) 9)) ;35% de la energia com a maxim en grams
    (bind ?fibra 40)  ;40 grams segons la OMS
    (bind ?sucre 50) ;OMS
    (bind ?minerals 0);

    (if (and (< ?e 70) (eq ?g M)) then
        (bind ?minerals 1.66)
    )
    (if (and (< ?e 70) (eq ?g F)) then
        (bind ?minerals 1.620)
    )
    (if (and (> ?e 70) (eq ?g M)) then
        (bind ?minerals 1.766)
    )
    (if (and (> ?e 70) (eq ?g F)) then
        (bind ?minerals 1.660)
    )


    (assert (restriccionsNutricionalsDiaries (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax)))
    (assert(necessitat_calculades))

)

(defrule INFERIR_DADES::doesntDoAnything "Here we would add the different rules"
  (nou_usuari)
  (necessitat_calculades)
  =>
	(printout t crlf)
	(printout t "Passem al modul de filtrar plats no possibles: "crlf)
  (focus MALALTIES)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODUL DE MALALTIES			---------- 				MODUL DE MALALTIES
;;;------------------------------------------------------------------------------------------------------------------------------------------------------
(defmodule MALALTIES
	(import MAIN ?ALL)
	(import PREGUNTES ?ALL)
	(import INFERIR_DADES ?ALL)
	(export ?ALL)
)

(defrule MALALTIES::osteoporosis "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	(Osteoporosis)
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))

	(assert (PreferenciaP Lactic))
	(assert (PreferenciaP Datils))
	(assert (PreferenciaP CerealsIntegrals))
	(assert (PreferenciaP Espinacs))
	(assert (PreferenciaP Nous))
	(assert (PreferenciaP Taronja))
	(assert (PreferenciaP Mongeta))
	(assert (PreferenciaP Col))
	(assert (PreferenciaP Almendras))
	(assert (PreferenciaP PescadoAzul))
)

(defrule MALALTIES::problemes_articulars "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	(Problemes articulars)
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))

	(assert (PreferenciaP Brocoli))
	(assert (PreferenciaP Jengibre))
	(assert (PreferenciaP frambuesas))
	(assert (PreferenciaP Azufre))
	(assert (PreferenciaP VitaminaD))
	(assert (PreferenciaP Magnesi))
)

(defrule MALALTIES::hipertensio "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	(Hipertensio)
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))
	(assert (PreferenciaP Dairy_Eggs))
	(assert (PreferenciaP Fish))
	(assert (PreferenciaP Pasta))
	(assert (PreferenciaP Potatoe))
	(assert (PreferenciaP Legumes))
	;(assert (PreferenciaP Greixos)) ;Vigilar perque aixo tant sols es un nutrient


	(assert (PreferenciesN S))
	(assert (PreferenciesAfegidesN))
	(assert (PreferenciaN Chocolate))
	;(assert (PreferenciaN Carnsvermelles)) Aixo es un subtipus. Definir alguns exemples concrets
	(assert (PreferenciaN Ramen))
	(assert (PreferenciaN Mostassa))
	(assert (PreferenciaN regaliz))
	(assert (PreferenciaN patatas))

	;afegir carns amb poc greix (Aquesta sintexis per eliminar els plats que ho compleixin)
	(assert (RestriccionsAfegidesFamiliaNutrient))
	(assert (RestriccioFamiliaNutrient Meet Greixos 10)) ;syntaxis Familia/Aliment Nom_Nutrient Quantitat_en_grams

		;afegir carns amb poc greix (Aquesta sintaxis per preferir no consumir els plats que ho compleixin)
	;(assert (PreferenciesAfegidesFamiliaNutrient))
	;(assert (PreferenciesFamiliaNutrient Carn Greixos 10)) ;syntaxis Familia/Aliment Nom_Nutrient Quantitat_en_grams

)

(defrule MALALTIES::diabetis "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	(Diabetis)
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))
	(assert (PreferenciesN S))
	(assert (PreferenciesAfegidesN))

	(assert (PreferenciaP Banana))
	(assert (PreferenciaP Strawberries))
	(assert (PreferenciaP Semillas))
	(assert (PreferenciaP Nuts))
	(assert (PreferenciaP Canela))
	(assert (PreferenciaP Trigo))
	(assert (PreferenciaP Olives))
	(assert (PreferenciaP Espinacs))
	(assert (PreferenciaP Remolacha))
	(assert (PreferenciaP Chucrut))

	(assert (PreferenciaN alimentosazucarados))
	(assert (PreferenciaN alimentosconsodio))
	(assert (PreferenciaN harinasrefinadas))
	(assert (PreferenciaN Dairy_Eggs))
	(assert (PreferenciaN Honey))
	(assert (PreferenciaN Sweets))
	(assert (PreferenciaN White chocolate))
	(assert (PreferenciaN Donuts))
	(assert (PreferenciaN sucre))  ;aixo es un nutrient dels ingredients
	(assert (PreferenciaN Fruit))
	(assert (PreferenciaN Fats_Oils))
)

(defrule MALALTIES::passemAFiltrat "No fa res. Passem al seguent modul"
	(nou_usuari)
	=>
	(printout t crlf)
	(printout t "Passem al modul de marcar les filtrat: "crlf)
	(focus FILTRAT)
)

;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE FILTRADO				---------- 				MODULO DE FILTRADO
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas
(defmodule FILTRAT
	(import MAIN ?ALL)
	(import PREGUNTES ?ALL)
	(import INFERIR_DADES ?ALL)
	(import MALALTIES ?ALL)
	(export ?ALL)
)


(defrule FILTRAT::filtremPlatsRestringuits "aqui eliminem els plats que tenen algun producte prohibit"
    (nou_usuari)
    (RestriccionsAfegides)
    (Restriccio $?P)   ;poden haveri varies coses a potenciar
    ?plat <- (object (is-a Plat))
	=>
	(bind ?i 1)
	(bind ?FI FALSE)
     (while (and (eq ?FI FALSE) (<= ?i (length$ (send ?plat get-Ingredients))))
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        ;Comprovem si pertany a una familia a potenciar
        (if (member$ (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
					(printout t " Eliminem el plat " (instance-name ?plat) crlf)
					(send ?plat delete)
					(bind ?FI TRUE)
        )
        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
        (progn$ (?it ?P)
            (if (= (str-compare ?it ?a) 0) then
                            (printout t " Eliminem el plat " (instance-name ?plat) crlf)
                            (send ?plat delete)
                            (bind ?FI TRUE)
                        )
        )
        (bind ?i (+ ?i 1))
     )
)

(defrule FILTRAT::filtremPlatsRestringuits "aqui eliminem els plats que contenen algun producte que conte un nutrient que amb una certa quantitat es prohibida"
    (nou_usuari)
    (RestriccionsAfegidesFamiliaNutrient)
    (RestriccioFamiliaNutrient ?f ?n ?q)   ;poden haveri varies coses a potenciar
    ?plat <- (object (is-a Plat))
	=>
	(bind ?i 1)
	(bind ?FI FALSE)
    (while (and (eq ?FI FALSE) (<= ?i (length$ (send ?plat get-Ingredients)))) ;recorrem tots els seus ingredients
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        ;Comprovem si pertany a una familia a potenciar
        (if (eq (send ?ingredientGeneral get-Familia) ?f) then    ;comprovem si son de la mateixa familia

			;Recorrem els seus nutrients
            (bind ?j 1)
            (while (and (eq ?FI FALSE) (<= ?j (length$ (send ?ingredientGeneral get-Nutrients))))	;recorrem tots els nutrients
					(bind ?nutrient (nth$ ?j (send ?ingredientGeneral get-Nutrients)))

					(bind ?tipus (send ?nutrient get-Tipus_nutrient))
					(bind ?quantitat (send ?nutrient get-Quantitat_nutrient))	;tenim la quantitat de nutrients per cada 100g

					;Comprovem si es del tipus de nutrient passat i en te la suficient quantitat de greix
                    (if (and (eq ?tipus ?n) (>= ?quantitat ?q)) then
                        (printout t " Eliminem el plat " (instance-name ?plat) " per contenir " ?quantitat " grams del nutrient " ?n crlf)
                        (send ?plat delete)
                        (bind ?FI TRUE)
                    )

            (bind ?j (+ ?j 1)))
        )
        (bind ?i (+ ?i 1))
     )
)


(defrule FILTRAT::finalFiltrat "regla para pasar al modulo siguiente"
      (nou_usuari)
      =>
			(printout t crlf)
			(printout t "Passem al modul de marcar les preferencies: "crlf)
      (focus PREFERENCIES)
)



;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					MODULO DE PREFERENCIAS				---------- 				MODULO DE PREFERENCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; En este modulo se hace la abstraccion de los datos obtenidos del modulo de pregunatas
(defmodule PREFERENCIES
	(import MAIN ?ALL)
	(import PREGUNTES ?ALL)
	(import INFERIR_DADES ?ALL)
	(import FILTRAT ?ALL)
	(export ?ALL)
)


;Li sumem 1 a la puntuacio del plat per cada ingredient de temporada que conte
(defrule PREFERENCIES::preferirProductesTemporada "aqui intentem potenciar els plats que tenen productes de temporada"
    (nou_usuari)
    (Temporada ?n)
    ?plat <- (object (is-a Plat))

	=>
	(bind ?i 1)
	(bind ?FI FALSE)

     (while (<= ?i (length$ (send ?plat get-Ingredients)))
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        (if (member$ ?n (send ?ingredientGeneral get-Temporada)) then
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient de temporada "crlf)c            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 1))
            (send ?plat put-GrauRecomanacio ?grau)
        )
        (bind ?i (+ ?i 1))
     )
)


;Li sumem 1 a la puntuacio del plat per cada ingredient de temporada que conte
(defrule PREFERENCIES::preferirProductesANoConsumir "aqui intentem potenciar els plats que tenen productes de temporada"
    (nou_usuari)
    (PreferenciesN S)
    (PreferenciesAfegidesN)
    (PreferenciaN $?P)   ;poden haveri varies coses a potenciar
    ?plat <- (object (is-a Plat))

	=>
	(bind ?i 1)
	(bind ?FI FALSE)

     (while (<= ?i (length$ (send ?plat get-Ingredients)))
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))

        ;Comprovem si pertany a una familia a potenciar
        (if (member$ (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient de la familia a potenciar de no menjar"crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) -2))
            (send ?plat put-GrauRecomanacio ?grau)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
         (progn$ (?it ?P)
            (if (= (str-compare ?it ?a) 0) then
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient a potenciar de no menjar "crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) -2))
            (send ?plat put-GrauRecomanacio ?grau))
        )

        (bind ?i (+ ?i 1))
     )
)


;Nomes esta fet el cas negatiu. Indicar aquells plats no preferibles si son d'una certa familia i tenen una certa quantitat d'un nutrient
(defrule PREFERENCIES::NopreferirPerFamiliaINutrient "aqui fem que siguin menys preferibles els plats que contenen algun producte que conte un nutrient que amb una certa quantitat es prohibida"

    (nou_usuari)
    (PreferenciesAfegidesFamiliaNutrient)
    (PreferenciesFamiliaNutrient ?f ?n ?q)   ;poden haveri varies coses a potenciar
    ?plat <- (object (is-a Plat))
	=>
	(bind ?i 1)
	(bind ?FI FALSE)
    (while (and (eq ?FI FALSE) (<= ?i (length$ (send ?plat get-Ingredients)))) ;recorrem tots els seus ingredients
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        ;Comprovem si pertany a una familia a potenciar
        (if (eq (send ?ingredientGeneral get-Familia) ?f) then    ;comprovem si son de la mateixa familia

			;Recorrem els seus nutrients
            (bind ?j 1)
            (while (and (eq ?FI FALSE) (<= ?j (length$ (send ?ingredientGeneral get-Nutrients))))	;recorrem tots els nutrients
					(bind ?nutrient (nth$ ?j (send ?ingredientGeneral get-Nutrients)))

					(bind ?tipus (send ?nutrient get-Tipus_nutrient))
					(bind ?quantitat (send ?nutrient get-Quantitat_nutrient))	;tenim la quantitat de nutrients per cada 100g

					;Comprovem si es del tipus de nutrient passat i en te la suficient quantitat de greix
                    (if (and (eq ?tipus ?n) (>= ?quantitat ?q)) then
                        (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient que conte " ?quantitat " grams de " ?tipus crlf)
                        (bind ?grau (+ (send ?plat get-GrauRecomanacio) -2))
                        (send ?plat put-GrauRecomanacio ?grau))
            (bind ?j (+ ?j 1)))
            )

        (bind ?i (+ ?i 1))
     )
)


;Li sumem 1 a la puntuacio del plat per cada ingredient de temporada que conte
(defrule PREFERENCIES::preferirProductesAConsumir "aqui intentem potenciar els plats que tenen productes de temporada"
    (nou_usuari)
    (PreferenciesP S)
    (PreferenciesAfegidesP)
    (PreferenciaP $?P)   ;poden haveri varies coses a potenciar
    ?plat <- (object (is-a Plat))

	=>
	(bind ?i 1)
	(bind ?FI FALSE)

     (while (<= ?i (length$ (send ?plat get-Ingredients)))
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))

        ;Comprovem si pertany a una familia a potenciar
        (if (member$ (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient de la familia a potenciar a menjar"crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 1))
            (send ?plat put-GrauRecomanacio ?grau)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
         (progn$ (?it ?P)
            (if (= (str-compare ?it ?a) 0) then
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient a potenciar a menjar "crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 1))
            (send ?plat put-GrauRecomanacio ?grau))
        )

        (bind ?i (+ ?i 1))
     )
)


(defrule PREFERENCIES::acabatLesPreferencia "Saltem al seguent modul"
    (nou_usuari)
    =>
    (printout t crlf)
    (printout t "Passem al modul de formar menus: "crlf)
    (focus MENUS)
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  				MODULO DE MENÚS		---------- 				MODULO DE MENÚS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

;; Aqui montamos nustro menu final

(defmodule MENUS
	(import MAIN ?ALL)
	(import PREGUNTES ?ALL)
	(import INFERIR_DADES ?ALL)
	(import FILTRAT ?ALL)
	(import PREFERENCIES ?ALL)
	(export ?ALL)
)

(defrule MENUS::reglaInicialMenus "Aqui creem alguns fets necessaris per a poder mostrejar el menu"
    (declare (salience 0))
    (nou_usuari)
    (not (FI))
    (not (AnemACalcular))
    =>
    (assert (infoNutricionalMenu))
    (assert (menusDiaris creats))
    (assert (menuDiari (dia 1)))
    (assert (menuDiari (dia 2)))
    (assert (menuDiari (dia 3)))
    (assert (menuDiari (dia 4)))
    (assert (menuDiari (dia 5)))
    (assert (menuDiari (dia 6)))
    (assert (menuDiari (dia 7)))
    (assert (PrimeraPosicio 1))
    (assert (counter 1))
)

(defrule MENUS::inicialitzemInformacioPlats "aqui tant sols creem els fets de la informacio nutricional de cada plat"
	(nou_usuari)
	?plat <- (object (is-a Plat))
	(not (AnemACalcular))
	=>
	(assert (infoNutricionalPlat (plat ?plat)))	;creem la informacio nutricional del plat
)


(defrule MENUS::obtenirInfoNutricionalPlat "aqui sumarem la informacio nutricional de cada ingredient del plat"
    (nou_usuari)
    (not (AnemACalcular))
    ?plat <- (object (is-a Plat))
    (not(ValorNutricional ?plat))


    ?infoPlat <- (infoNutricionalPlat (plat ?plat)(Vitamines ?vit) (Proteines ?prot) (Hidrats_de_carboni ?hid) (Greixos ?g) (Aigua ?a) (Minerals ?m) (Fibra ?f)(Sucre ?s)(Colesterol ?col))

    =>
    (bind ?i 1)
    (bind ?kcals 0)
    (while (<= ?i (length$ (send ?plat get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (bind ?kcal (+ ?kcal (send ?ingredient get-Valor_energetic%28kcal%29)))
            (bind ?j 1)
            (while (<= ?j (length$ (send ?ingredientGeneral get-Nutrients)))	;recorrem tots els nutrients
                        (bind ?nutrient (nth$ ?j (send ?ingredientGeneral get-Nutrients)))

                        (bind ?tipus (send ?nutrient get-Tipus_nutrient))
                        (bind ?quantitat (send ?nutrient get-Quantitat_nutrient))	;tenim la quantitat de nutrients per cada 100g

                        ;actualitzem la informació del plat
                        (bind ?quantitatNova (* ?quantitat (/ ?quantitatIngredient 100)))	;trobem la quantitat del nutrient en funcio de la quantitat del ingredient

                        (switch ?tipus
                            (case Aigua then (bind ?a (+ ?quantitatNova ?a)))

                            (case Minerals then (bind ?m (+ ?quantitatNova ?m)))

                            (case Proteines then (bind ?prot (+ ?quantitatNova ?prot)))

                            (case Vitamines then (bind ?vit (+ ?quantitatNova ?vit)))

                            (case Fibra then (bind ?f (+ ?quantitatNova ?f)))

                            (case Hidrats_de_carboni then (bind ?hid (+ ?quantitatNova ?hid)))

                            (case Greixos then (bind ?g (+ ?quantitatNova ?g)))

                            (case Sucre then (bind ?s (+ ?quantitatNova ?s)))

                            (case Colesterol then (bind ?col (+ ?quantitatNova ?col)))
                        )

            (bind ?j (+ ?j 1))
            )

            (bind ?i (+ ?i 1))
    )
    (modify ?infoPlat (Vitamines ?vit) (Proteines ?prot) (Hidrats_de_carboni ?hid) (Greixos ?g) (Sucre ?s) (Aigua ?a) (Minerals ?m) (Fibra ?f)(Colesterol ?col) (Energia ?kcals))
    (assert (ValorNutricional ?plat))
    (assert (ValorsNutricionals afegits))

)


;aixo ho divideix en tipus i a més ens ho ordena
(defrule MENUS::dividirEnTipusPlats "Ara dividim tots els plats que han quedat en esmorzar, dinar primer i segon plat, sopar primer i segon plat i postres"
    (declare (salience 1))
	(nou_usuari)
	(not (FI))
	(not (AnemACalcular))

	=>
	(bind ?esmorzars (find-all-instances ((?inst Plat)) (member$ Esmorzar ?inst:Apat)))
	(bind ?dinarsPrimers (find-all-instances ((?inst Plat)) (and (member$ Dinar ?inst:Apat) (member$ 1r ?inst:Tipus_plat)) ))
	(bind ?dinarsSegons(find-all-instances ((?inst Plat)) (and (member$ Dinar ?inst:Apat)(member$ 2n ?inst:Tipus_plat)) ))
	(bind ?soparsPrimers (find-all-instances ((?inst Plat)) (and (member$ Sopar ?inst:Apat)(member$ 1r ?inst:Tipus_plat)) ))
	(bind ?soparsSegons(find-all-instances ((?inst Plat)) (and (member$ Sopar ?inst:Apat)(member$ 2n ?inst:Tipus_plat)) ))
	(bind ?postres(find-all-instances ((?inst Plat)) (member$ Postres ?inst:Tipus_plat)))

	;declarem un parell de fets per a ajudar a fer el mostreig

	(bind ?pos 1)
	(progn$ (?i ?esmorzars)
		(assert (solucionOrdenadaE (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroEsmorzars (- ?pos 1)))

	(bind ?pos 1)
	(progn$ (?i ?dinarsPrimers)
		(assert (solucionOrdenadaDP (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroDinarPrimers (- ?pos 1)))

	(bind ?pos 1)

	(progn$ (?i ?dinarsSegons)
		(assert (solucionOrdenadaDS (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroDinarSegons (- ?pos 1)))


	(bind ?pos 1)
	(progn$ (?i ?soparsPrimers)
		(assert (solucionOrdenadaSP (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroSoparPrimers (- ?pos 1)))

	(bind ?pos 1)
	(progn$ (?i ?soparsSegons)
		(assert (solucionOrdenadaSS (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroSoparSegons (- ?pos 1)))

	(bind ?pos 1)
	(progn$ (?i ?postres)
		(assert (solucionOrdenadaP (posicio ?pos) (plat ?i)))
		(bind ?pos (+ ?pos 1))
	)
	(assert (numeroPostres (- ?pos 1)))
)


;ANEM A ORDENAR ELS RESULTATS
(defrule MENUS::ordenarEsmorzars "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
    (declare (salience 0))
	(not (FI))
	(not (AnemACalcular))
	(nou_usuari)
	?p1 <- (solucionOrdenadaE (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaE (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)

(defrule MENUS::ordenarDinarPrimers "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(declare (salience 0))
	(not (FI))
	(nou_usuari)
	(not (AnemACalcular))
	?p1 <- (solucionOrdenadaDP (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaDP (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)

(defrule MENUS::ordenarDinarSegons "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(declare (salience 0))
	(not (FI))
	(not (AnemACalcular))
	(nou_usuari)
	?p1 <- (solucionOrdenadaDS (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaDS (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)

(defrule MENUS::ordenarSoparPrimers "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(declare (salience 0))
	(not (FI))
	(not (AnemACalcular))
	(nou_usuari)
	?p1 <- (solucionOrdenadaSP (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaSP (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)

(defrule MENUS::ordenarSoparSegons "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(declare (salience 0))
	(not (FI))
	(not (AnemACalcular))
	(nou_usuari)
	?p1 <- (solucionOrdenadaSS (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaSS (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)


(defrule MENUS::ordenarPostres "regla para ordenar las recomendaciones descendentemente por el grado de recomendacion"
	(declare (salience 0))
	(not (FI))
	(not (AnemACalcular))
	(nou_usuari)
	?p1 <- (solucionOrdenadaP (posicio ?pos1) (plat ?plat1))
	?p2 <- (solucionOrdenadaP (posicio ?pos2) (plat ?plat2))
	(test (and (> (send ?plat1 get-GrauRecomanacio) (send ?plat2 get-GrauRecomanacio)) (< ?pos1 ?pos2)))
	=>
	;anem modificant les posicions entre ells fins que cada plat te la seva posicio correcta
	(modify ?p1 (posicio ?pos2))
	(modify ?p2 (posicio ?pos1))
)


;Selecciona els 7 primers esmorzars o torna a començar si ja no en queden
(defrule MENUS::seleccionar7Esmorzars  "regla para mostrar solo 6 recomendaciones"
    (declare (salience -1))
	(nou_usuari)
	(not (AnemACalcular))
	(ValorsNutricionals afegits)
	(not (Esmorzars omplerts))

	(numeroEsmorzars ?posMaxima)
	?cc <- (counter ?c)    ;aquest counter ens indica el nombre d'elements tractats

	;aquest ens indica la posicio a la que hem d'excedir. Pot ser que hagui de tornar a començar perque falten elements
	?pph <- (PrimeraPosicio ?pos)
	(test (<= ?c 7))
	?recH <- (solucionOrdenadaE (posicio ?pos) (plat ?plat))

	?menu <- (menuDiari (dia ?c))
	=>
	(modify ?menu (esmorzar ?plat))

	(retract ?cc)
	(retract ?pph)

	(assert(counter (+ ?c 1)))

	;si ens hem passat, tornem a començar
	(if (> (+ ?pos 1) ?posMaxima) then
        (assert(PrimeraPosicio 1))

    else
        (assert(PrimeraPosicio (+ ?pos 1)))
    )
)


(defrule MENUS::recuperemCounters1 "Tornem a settejar les variables per tornar a fer el counting"
    (declare (salience -1))
    (nou_usuari)
    (not (AnemACalcular))
    (not (Esmorzars omplerts))
    (not(FI))
    ?pph <- (PrimeraPosicio ?)
    ?cc <- (counter ?)
    =>
    (assert (PrimeraPosicio 1))
    (assert (counter 1))
    (assert (Esmorzars omplerts))
)


;Selecciona els 7 primers esmorzars o torna a començar si ja no en queden
(defrule MENUS::seleccionar7DinarPrimers  "regla para mostrar solo 6 recomendaciones"
  (declare (salience -1))
	(nou_usuari)
	(not (AnemACalcular))
	(not (DinarP omplerts))
	(Esmorzars omplerts)
	(numeroDinarPrimers ?posMaxima)
	?cc <- (counter ?c)    ;aquest counter ens indica el nombre d'elements tractats

	;aquest ens indica la posicio a la que hem d'excedir. Pot ser que hagui de tornar a començar perque falten elements
	?pph <- (PrimeraPosicio ?pos)
	(test (<= ?c 7))
	?recH <- (solucionOrdenadaDP (posicio ?pos) (plat ?plat))
	?menu <- (menuDiari (dia ?c))
	=>
	(modify ?menu (dinarPrimer ?plat))
	(retract ?cc)
	(retract ?pph)
	(assert(counter (+ ?c 1)))

	;si ens hem passat, tornem a començar
	(if (> (+ ?pos 1) ?posMaxima) then
        (assert(PrimeraPosicio 1))
    else
        (assert(PrimeraPosicio (+ ?pos 1)))
    )
)


(defrule MENUS::recuperemCounters2 "Tornem a settejar les variables per tornar a fer el counting"
    (declare (salience -1))
    (nou_usuari)
    (not (AnemACalcular))
    (not(FI))
    (Esmorzars omplerts)
    (not (DinarP omplerts))
    ?pph <- (PrimeraPosicio ?)
    ?dd <- (dia ?)
    =>
    (retract ?dd)
    (assert (PrimeraPosicio 1))
    (assert (dia 1))
    (assert (DinarP omplerts))
    (assert (AnemACalcular))
)


(defrule MENUS::completarMenu "Completem el menu amb els plats que falten"

    (declare (salience -2))
    (nou_usuari)
    (AnemACalcular)
    (DinarP omplerts)
    (Esmorzars omplerts)
    (menusDiaris creats)
    (not (menuCompletat))
    (ValorsNutricionals afegits)
    ?dd <- (dia ?d)
    ?menu <- (menuDiari (dia ?d))
    (test (<= ?d 8))

    ?recDS1 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS1))
    ?recDPostres1 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres1))
    ?recSP1 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP1))
    ?recSS1 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS1))
    ?recSPostres1 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres1))

    =>
    (if (< ?d 8) then
        (modify ?menu (dinarSegon ?platDS1) (soparPrimer ?platSP1) (soparSegon ?platSS1)(dinarPostres ?platDPostres1)(soparPostres ?platSPostres1))
        (retract ?dd)
        (assert (dia (+ ?d 1)))
    else
        (assert (menuCompletat))
        (assert (dia ))
    )
)




(defrule MENUS::calculValorNutricionalMenu "Calculem el total de nutrients que consumim semanalment"
	(nou_usuari)
	?mc <- (menuCompletat)
	(AnemACalcular)
	?dd <- (dia ?d)    ;aquest counter ens indica el nombre d'elements tractats
    (test (<= ?d 8))
    (menuDiari (dia ?d) (esmorzar ?platE) (dinarPrimer ?platDP)(dinarSegon ?platDS) (soparPrimer ?platSP) (soparSegon ?platSS)(dinarPostres ?platDPostres)(soparPostres ?platSPostres))

    ?ms <- (infoNutricionalMenu (Aigua ?a0) (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

	?n1 <- (infoNutricionalPlat (plat ?platE)(Aigua ?a1) (Minerals ?m1) (Proteines ?p1) (Vitamines ?v1) (Fibra ?f1)(Hidrats_de_carboni ?h1) (Greixos ?g1) (Sucre ?s1) (Colesterol ?c1)(Energia ?e1))
	?n2 <- (infoNutricionalPlat (plat ?platDP)(Aigua ?a2) (Minerals ?m2) (Proteines ?p2) (Vitamines ?v2) (Fibra ?f2)(Hidrats_de_carboni ?h2) (Greixos ?g2) (Sucre ?s2) (Colesterol ?c2)(Energia ?e2))
	?n3 <- (infoNutricionalPlat (plat ?platDS)(Aigua ?a3) (Minerals ?m3) (Proteines ?p3) (Vitamines ?v3) (Fibra ?f3)(Hidrats_de_carboni ?h3) (Greixos ?g3) (Sucre ?s3) (Colesterol ?c3)(Energia ?e3))
	?n4 <- (infoNutricionalPlat (plat ?platSP)(Aigua ?a4) (Minerals ?m4) (Proteines ?p4) (Vitamines ?v4) (Fibra ?f4)(Hidrats_de_carboni ?h4) (Greixos ?g4) (Sucre ?s4) (Colesterol ?c4)(Energia ?e4))
	?n5 <- (infoNutricionalPlat (plat ?platSS)(Aigua ?a5) (Minerals ?m5) (Proteines ?p5) (Vitamines ?v5) (Fibra ?f5)(Hidrats_de_carboni ?h5) (Greixos ?g5) (Sucre ?s5) (Colesterol ?c5)(Energia ?e5))
	?n6 <- (infoNutricionalPlat (plat ?platDPostres)(Aigua ?a6) (Minerals ?m6) (Proteines ?p6) (Vitamines ?v6) (Fibra ?f6)(Hidrats_de_carboni ?h6) (Greixos ?g6) (Sucre ?s6) (Colesterol ?c6)(Energia ?e6))
	?n7 <- (infoNutricionalPlat (plat ?platSPostres)(Aigua ?a7) (Minerals ?m7) (Proteines ?p7) (Vitamines ?v7) (Fibra ?f7)(Hidrats_de_carboni ?h7) (Greixos ?g7) (Sucre ?s7) (Colesterol ?c7)(Energia ?e7))

	=>
	(if (eq ?d 8) then     ;si ja ens hem passat
        (assert(valorNutricionalCalculat))

    else
        (printout t "Dia " ?d crlf)
        (bind ?a (+ ?a0 ?a1 ?a2 ?a3 ?a4 ?a5 ?a6 ?a7))
        (bind ?m (+ ?m0 ?m1 ?m2 ?m3 ?m4 ?m5 ?m6 ?m7))
        (bind ?p (+ ?p0 ?p1 ?p2 ?p3 ?p4 ?p5 ?p6 ?p7))
        (bind ?v (+ ?v0 ?v1 ?v2 ?v3 ?v4 ?v5 ?v6 ?v7))
        (bind ?f (+ ?f0 ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7))
        (bind ?h (+ ?h0 ?h1 ?h2 ?h3 ?h4 ?h5 ?h6 ?h7))
        (bind ?g (+ ?g0 ?g1 ?g2 ?g3 ?g4 ?g5 ?g6 ?g7))
        (bind ?s (+ ?s0 ?s1 ?s2 ?s3 ?s4 ?s5 ?s6 ?s7))
        (bind ?c (+ ?c0 ?c1 ?c2 ?c3 ?c4 ?c5 ?c6 ?c7))
        (bind ?e (+ ?e0 ?e1 ?e2 ?e3 ?e4 ?e5 ?e6 ?e7))

        (modify ?ms (Aigua ?a) (Minerals ?m) (Proteines ?p) (Vitamines ?v) (Fibra ?f)(Hidrats_de_carboni ?h) (Greixos ?g) (Sucre ?s) (Colesterol ?c)(Energia ?e))
        (retract ?dd)
        (assert (dia (+ ?d 1))))  ;iterem sobre el seguent dia
)



(defrule MENUS::ComprovemMenu "Aqui comprovem si el menu compleix les nostres condicions nutricionals"
    ?mc <- (menuCompletat)
    ?vn <- (valorNutricionalCalculat)

   (infoNutricionalMenu (Aigua ?a1) (Minerals ?m1) (Proteines ?p1) (Vitamines ?v1) (Fibra ?f1)(Hidrats_de_carboni ?h1) (Greixos ?g1) (Sucre ?s1) (Colesterol ?c1)(Energia ?e1))
   (restriccionsNutricionalsDiaries (kilocalories ?e2) (vitamines ?v2) (hidratsCarboni ?h2)(greixosMaxims ?g2) (proteines ?p2) (fibra ?f2) (minerals ?m2) (sucre ?s2)(colesterol ?c2))

=>
    ;falta incloure rangs per veure que estiguin dins (treure l'aigua??) Incloure les kcal
    (if (and (> ?v1 ?v2) (< ?p1 ?p2) (> ?f1 ?f2) (< ?h1 ?h2) (< ?g1 ?g2) (> ?m1 ?m2) (< ?c1 ?c2) (< ?s1 ?s2) (< ?e1 ?e2)) then
        (assert(menuCompletat)) ;si correcte

    else
        (retract ?mc)
        (retract ?vn)   ;aixi forcem a tornar a calcular el menu
    )

)



(defrule MENUS::MostrarHemArribatAlFinal "Aqui simplement indiquem que ja no es debug i que treiem el menu"
(nou_usuari)
(menuCompletat)
(AnemACalcular)
=>
(assert (imprimir))
(printout t crlf)
(printout t "---------------------------------------------------------------" crlf)
(printout t "------------------     Final weekly menu     ------------------" crlf)
(printout t "---------------------------------------------------------------" crlf)
(printout t crlf)
)



(defrule MENUS::MostrarMenuDefinitiu "Aquesta regla mostra els menus definitius"
    (menuCorrecte)
    (imprimir)
    ?dd <- (dia ?d)
    (test (<= ?d 7))

    ?menu <- (menuDiari (dia ?d) (esmorzar ?e) (dinarPrimer ?dp) (dinarSegon ?ds) (dinarPostres ?dpostres) (soparPrimer ?sp) (soparSegon ?ss)(soparPostres ?spostres))
    =>
    (printout t crlf)
    (printout t crlf)
    (switch ?d
		(case 1 then (printout t "MONDAY" crlf))
		(case 2 then (printout t "TUESDAY" crlf))
		(case 3 then (printout t "WEDNESDAY" crlf))
		(case 4 then (printout t "THURSDAY" crlf))
		(case 5 then (printout t "FRIDAY" crlf))
		(case 6 then (printout t "SATURDAY" crlf))
		(case 7 then (printout t "SUNDAY" crlf)))
        (printout t "----------------------------------- " crlf)


        (bind ?i 1)
        (printout t "BREAKFAST : " (send ?e get-Nom) crlf)
        (while (<= ?i (length$ (send ?e get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?e get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (printout t crlf)
        (printout t crlf)
        (printout t "LUNCH :" crlf)
        (printout t "First dish: " (send ?dp get-Nom) crlf)

        (while (<= ?i (length$ (send ?dp get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?dp get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (printout t crlf)
        (printout t "Second dish : " (send ?ds get-Nom) crlf)
        (while (<= ?i (length$ (send ?ds get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?ds get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (printout t crlf)
        (bind ?i 1)
        (printout t "Desert : " (send ?dpostres get-Nom) crlf)
        (while (<= ?i (length$ (send ?dpostres get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?dpostres get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )


        (bind ?i 1)
        (printout t crlf)
        (printout t crlf)
        (printout t "DINNER :" crlf)
        (printout t "First dish : " (send ?sp get-Nom) crlf)
        (while (<= ?i (length$ (send ?sp get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?sp get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (printout t crlf)
        (printout t "Second dish : " (send ?ss get-Nom) crlf)
        (while (<= ?i (length$ (send ?ss get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?ss get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (bind ?i 1)
        (printout t crlf)
        (printout t "Desert : " (send ?spostres get-Nom) crlf)
        (while (<= ?i (length$ (send ?spostres get-Ingredients)))	;Recorrem tots els ingredients
        do
            (bind ?ingredient (nth$ ?i (send ?spostres get-Ingredients))) ;agafem el n-èssim IngredientConcret
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
            (printout t ?i ". " ?quantitatIngredient " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (printout t crlf)

        (retract ?dd)
        (assert (dia (+ ?d 1)))
        (assert (FI))
)
