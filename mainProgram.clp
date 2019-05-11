; Sun May 05 12:50:41 CEST 2019
;
;+ (version "3.3.1")
;+ (build "Build 430")


(defclass %3ACLIPS_TOP_LEVEL_SLOT_CLASS "Fake class to save top-level slot information"
	(is-a USER)
	(role abstract)
	(single-slot Grasas
;+		(comment "Nombre de grasas")
		(type INTEGER)
		(default 0)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Proteines
;+		(comment "Nombre de proteines")
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valor_energetic%28kcal%29
;+		(comment "Nombre de kilocaloríes")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Ingredient_general
;+		(comment "Ingredient general al que fa referència aquest ingredient concret.")
		(type INSTANCE)
;+		(allowed-classes InfoIngredient)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Apat
;+		(comment "Indica si pot ser un plat per esmorzar, dinar o sopar (o diversos)")
		(type SYMBOL)
		(allowed-values Esmorzar Dinar Sopar)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot GrauRecomanacio
;+		(comment "Ens indica com de recomanable es que una persona en mengui")
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Familia
;+		(comment "Indica a la familia general d'aliments a la que pertany.")
		(type SYMBOL)
		(allowed-values Carn Peix Verdura Llegum L%C3%A0ctic Fruita Fruits_secs Ous Cereals)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Sopar
;+		(comment "Indica si és un plat per a un sopar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Tipus_nutrient
;+		(comment "Indica el tipus de nutrient que estem tractant (dins de tota la familia general de nutrients i micronutrients).\n\nEls greixos mono o poliinsaturats són positius per la alimentació. Els greixos trans no.")
		(type SYMBOL)
		(allowed-values Aigua Minerals Proteines Vitamines Fibra Hidrats_de_carboni Greixos_mono_o_poliinsat Greixos_trans)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Hidrats+de+carboni
;+		(comment "Nombre d'hidrats de carboni")
		(type INTEGER)
		(default 0)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Nutrients
;+		(comment "Aqui contenim les instàncies dels diferents nutrients que conté")
		(type INSTANCE)
;+		(allowed-classes Nutrient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(multislot Ingredients
;+		(comment "Ingredients principals del plat")
		(type INSTANCE)
;+		(allowed-classes IngredientConcret)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write))
	(single-slot Dinar
;+		(comment "Indica si és un plat per a un dinar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Esmorzar
;+		(comment "Indica si és un plat per a un esmorzar")
		(type SYMBOL)
		(allowed-values FALSE TRUE)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Cocci%C3%B3
;+		(comment "Manera com cuinem el ingredient")
		(type SYMBOL)
		(allowed-values Planxa Al_forn Fregit Fresc Saltejat Bullit)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Temporada
		(type SYMBOL)
		(allowed-values Hivern Primavera Estiu Tardor)
		(cardinality 1 4)
		(create-accessor read-write))
	(single-slot Nom_ingredient
;+		(comment "Nom del ingredient")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Quantitat_nutrient
;+		(comment "Valor en grams de nutrient")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Quantitat
;+		(comment "Quantitat que porta d'un ingredient general")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(single-slot Nom
;+		(comment "Nom del plat")
		(type STRING)
;+		(cardinality 0 1)
		(create-accessor read-write))
	(multislot Tipus_plat
;+		(comment "Indica si el plat és un 1r, 2n, postres o beguda (pot ser varios)")
		(type SYMBOL)
		(allowed-values 1r 2n Postres Beguda)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

		(defclass Plat
			(is-a USER)
			(role concrete)
			(multislot Apat
		;+		(comment "Indica si pot ser un plat per esmorzar, dinar o sopar (o diversos)")
				(type SYMBOL)
				(allowed-values Esmorzar Dinar Sopar)
				(cardinality 1 ?VARIABLE)
				(create-accessor read-write))
            (multislot Temporada
                (type SYMBOL)
                (allowed-values Hivern Primavera Estiu Tardor)
                (default Hivern Primavera Estiu Tardor)
                (cardinality 1 4)
                (create-accessor read-write))
			(single-slot GrauRecomanacio
		;+		(comment "Ens indica com de recomanable es que una persona en mengui")
				(type INTEGER)
				(default 0)
		;+		(cardinality 1 1)
				(create-accessor read-write))
			(single-slot Nom
		;+		(comment "Nom del plat")
				(type STRING)
		;+		(cardinality 0 1)
				(create-accessor read-write))
			(multislot Tipus_plat
		;+		(comment "Indica si el plat és un 1r, 2n, postres o beguda (pot ser varios)")
				(type SYMBOL)
				(allowed-values 1r 2n Postres Beguda)
				(cardinality 1 ?VARIABLE)
				(create-accessor read-write))
			(multislot Ingredients
		;+		(comment "Ingredients principals del plat")
				(type INSTANCE)
		;+		(allowed-classes IngredientConcret)
				(cardinality 1 ?VARIABLE)
				(create-accessor read-write)))

(defclass InfoIngredient
	(is-a USER)
	(role concrete)
	(single-slot Familia
;+		(comment "Indica a la familia general d'aliments a la que pertany.")
		(type SYMBOL)
		(allowed-values Carn Peix Verdura Llegum L%C3%A0ctic Fruita Fruits_secs Ous Cereals)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Nom_ingredient
;+		(comment "Nom del ingredient")
		(type STRING)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Valor_energetic%28kcal%29
;+		(comment "Nombre de kilocaloríes")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(multislot Temporada
		(type SYMBOL)
		(allowed-values Hivern Primavera Estiu Tardor)
		(default Hivern Primavera Estiu Tardor)
		(cardinality 1 4)
		(create-accessor read-write))
	(multislot Nutrients
;+		(comment "Aqui contenim les instàncies dels diferents nutrients que conté")
		(type INSTANCE)
;+		(allowed-classes Nutrient)
		(cardinality 1 ?VARIABLE)
		(create-accessor read-write)))

(defclass IngredientConcret
	(is-a USER)
	(role concrete)
	(single-slot Quantitat
;+		(comment "Quantitat que porta d'un ingredient general")
		(type INTEGER)
;+		(cardinality 0 1)
		(create-accessor read-write))
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
		(create-accessor read-write)))

(defclass Nutrient
	(is-a USER)
	(role concrete)
	(single-slot Tipus_nutrient
;+		(comment "Indica el tipus de nutrient que estem tractant (dins de tota la familia general de nutrients i micronutrients).\n\nEls greixos mono o poliinsaturats són positius per la alimentació. Els greixos trans no.")
		(type SYMBOL)
		(allowed-values Aigua Minerals Proteines Vitamines Fibra Hidrats_de_carboni Greixos Sucre)
;+		(cardinality 1 1)
		(create-accessor read-write))
	(single-slot Quantitat_nutrient
;+		(comment "Valor en grams de nutrient")
		(type INTEGER)
;+		(cardinality 1 1)
		(create-accessor read-write)))


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					INSTANCIAS					 		---------- 								INSTANCIAS
;;;------------------------------------------------------------------------------------------------------------------------------------------------------

(definstances instances

([IA_Instance_1] of  Plat
	(Apat Dinar Sopar)
	(Ingredients [IA_Instance_2])
	(Nom "Arros a la cubana")
	(Tipus_plat 1r 2n))

([IA_Instance_7] of  Plat

	(Apat Esmorzar)
	(Ingredients [IA_Instance_8])
	(Nom "Maduixes")
	(Tipus_plat 1r 2n))

([IA_Instance_10] of  Plat

	(Apat Esmorzar)
	(Ingredients [IA_Instance_8])
	(Nom "Maduixes2")
	(Tipus_plat 1r 2n))


([IA_Instance_2] of  IngredientConcret

	(Cocci%C3%B3 Bullit)
	(Ingredient_general [IA_Instance_3])
	(Quantitat 100))

([IA_Instance_8] of  IngredientConcret

	(Cocci%C3%B3 Bullit)
	(Ingredient_general [IA_Instance_6])
	(Quantitat 100))

([IA_Instance_3] of  InfoIngredient
	(Familia Carn)
	(Nom_ingredient "Arros")
	(Nutrients [IA_Instance_4])
	(Temporada Hivern)
	(Valor_energetic%28kcal%29 100))

([IA_Instance_6] of  InfoIngredient
    (Familia Fruita)
    (Nom_ingredient "Maduixa")
    (Nutrients [IA_Instance_4])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 100))


([IA_Instance_4] of  Nutrient

	(Quantitat_nutrient 10)
	(Tipus_nutrient Hidrats_de_carboni))


;;; Paella

([P0] of  Plat

    (Apat Dinar Sopar)
    (Ingredients  [IP0_0] [IP0_1] [IP0_2] [IP0_3] [IP0_4] [IP0_5] [IP0_6])
    (Nom "Paella valenciana")
    (Tipus_plat 1r 2n))

;;400 arros
([IP0_0] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I0])
    (Quantitat 400))

([I0] of  InfoIngredient
    (Familia Cereals)
    (Nom_ingredient "Arros")
    (Nutrients [I0_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 130))

([I0_N0] of  Nutrient

    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Greixos))


;;500 pollastre
([IP0_1] of  IngredientConcret

    (Cocci%C3%B3 Al_forn)
    (Ingredient_general [I1])
    (Quantitat 500))

([I1] of  InfoIngredient
    (Familia Carn)
    (Nom_ingredient "Pollastre sencer")
    (Nutrients [I1_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 239))

([I1_N0] of  Nutrient

    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Greixos))


;;225 llagostins
([IP0_2] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I2])
    (Quantitat 225))

([I2] of  InfoIngredient
    (Familia Marisc)
    (Nom_ingredient "Llagostins")
    (Nutrients [I2_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 88))

([I2_N0] of  Nutrient

    (Quantitat_nutrient 1.8)
    (Tipus_nutrient Greixos))


;;250 molusc
([IP0_3] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I3])
    (Quantitat 250))

([I3] of  InfoIngredient
    (Familia Cereals)
    (Nom_ingredient "Molusc")
    (Nutrients [I3_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 72))

([I3_N0] of  Nutrient

    (Quantitat_nutrient 1.96)
    (Tipus_nutrient Greixos))


;;150 tomate
([IP0_4] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I4])
    (Quantitat 150))

([I4] of  InfoIngredient
    (Familia Vegetals)
    (Nom_ingredient "Tomaquet fresc")
    (Nutrients [I4_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 22.17))

([I4_N0] of  Nutrient

    (Quantitat_nutrient 0.21)
    (Tipus_nutrient Greixos))


;;0.7 safrà
([IP0_5] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I5])
    (Quantitat 0.7))

([I5] of  InfoIngredient
    (Familia Cereals)
    (Nom_ingredient "Safrà")
    (Nutrients [I5_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 352))

([I5_N0] of  Nutrient

    (Quantitat_nutrient 5.85)
    (Tipus_nutrient Greixos))

;;200 calamar
([IP0_6] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I6])
    (Quantitat 200))

([I6] of  InfoIngredient
    (Familia Marisc)
    (Nom_ingredient "Calamar")
    (Nutrients [I6_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 80.40))

([I6_N0] of  Nutrient

    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Greixos))


;;; Macarrons tomàquet

([IP1] of  Plat

    (Apat Dinar Sopar)
    (Ingredients [IP1_0] [IP1_1] [IP1_2] [IP1_3] [IP1_4] [IP1_5])
    (Nom "Macarrons amb tomaquet")
    (Tipus_plat 1r 2n))

;;600 pasta
([IP1_0] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I7])
    (Quantitat 600))

([I7] of  InfoIngredient
    (Familia Cereals)
    (Nom_ingredient "Pasta")
    (Nutrients [I7_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 359))

([I7_N0] of  Nutrient

    (Quantitat_nutrient 1.58)
    (Tipus_nutrient Greixos))

;;50 mantega
([IP1_1] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I8])
    (Quantitat 50))

([I8] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Mantega")
    (Nutrients [I8_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 897))

([I8_N0] of  Nutrient

    (Quantitat_nutrient 99.5)
    (Tipus_nutrient Greixos))

;;50 mozzarella
([IP1_2] of  IngredientConcret

    (Cocci%C3%B3 Bullit)
    (Ingredient_general [I9])
    (Quantitat 50))

([I9] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Mozzarella")
    (Nutrients [I9_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 233))

([I9_N0] of  Nutrient

    (Quantitat_nutrient 16.1)
    (Tipus_nutrient Greixos))

;;250 tomaquet fregit
([IP1_3] of  IngredientConcret

    (Cocci%C3%B3 Fregit)
    (Ingredient_general [I10])
    (Quantitat 250))

([I10] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Tomaquet fregit")
    (Nutrients [I10_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 87.6))

([I10_N0] of  Nutrient

    (Quantitat_nutrient 6.4)
    (Tipus_nutrient Greixos))

;;50 oli oliva
([IP1_4] of  IngredientConcret

    (Cocci%C3%B3 Fregit)
    (Ingredient_general [I11])
    (Quantitat 20))

([I11] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Oli oliva")
    (Nutrients [I11_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 899))

([I11_N0] of  Nutrient

    (Quantitat_nutrient 99.9)
    (Tipus_nutrient Greixos))

;;30 ceba
([IP1_5] of  IngredientConcret

    (Cocci%C3%B3 Fregit)
    (Ingredient_general [I10])
    (Quantitat 250))

([I12] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Ceba")
    (Nutrients [I12_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 31.85))

([I12_N0] of  Nutrient

    (Quantitat_nutrient 0.25)
    (Tipus_nutrient Greixos))



;;; Flam

([IP2] of  Plat

    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP2_0] [IP2_1])
    (Nom "Flam")
    (Tipus_plat Postres ))

;;500 llet vaca
([IP2_0] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I13])
    (Quantitat 500))

([I13] of  InfoIngredient
    (Familia Lactic)
    (Nom_ingredient "Llet de vaca sencera")
    (Nutrients [I13_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 65.4))

([I13_N0] of  Nutrient

    (Quantitat_nutrient 3.8)
    (Tipus_nutrient Greixos))

;;240 ou gallina
([IP2_1] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I14])
    (Quantitat 240))

([I14] of  InfoIngredient
    (Familia Ous)
    (Nom_ingredient "Ou gallina")
    (Nutrients [I8_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 162))

([I14_N0] of  Nutrient

    (Quantitat_nutrient 12.1)
    (Tipus_nutrient Greixos))

;;200 sucre blanc
([IP1_2] of  IngredientConcret

    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I15])
    (Quantitat 200))

([I15] of  InfoIngredient
    (Familia Làctic)
    (Nom_ingredient "Sucre blanc")
    (Nutrients [I15_N0])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic%28kcal%29 399))

([I15_N0] of  Nutrient

    (Quantitat_nutrient 5)
    (Tipus_nutrient Aigua))



)   ; cal aquest parentesis per acabar totes les instancies

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

(deftemplate MAIN::restriccionsNutricionalsDiaria "aqui indiquem les diferents restriccions nutricionals d'un horari"
	(slot kilocaloriesMinimes (type INTEGER))
	(slot kilocaloriesMaximes (type INTEGER))
	(slot vitaminesMinimes (type INTEGER))
	(slot hidratsCarboniMinim (type INTEGER))
	(slot grasasTransMaximes (type INTEGER))
	(slot proteinesMinimes (type INTEGER))
	(slot proteinesMaximes (type INTEGER))
  (slot fibraMinima (type INTEGER))
	(slot mineralsMinims (type INTEGER))
)

(deftemplate MAIN::infoNutricionalPlat "aqui mantindrem comptatge dels nutrients que té un plat"
	(slot plat (type INSTANCE) (allowed-classes Plat))
	(slot Aigua (type INTEGER) (default 0))
	(slot Minerals (type INTEGER) (default 0))
	(slot Proteines (type INTEGER) (default 0))
	(slot Vitamines (type INTEGER) (default 0))
	(slot Fibra (type INTEGER) (default 0))
	(slot Hidrats_de_carboni (type INTEGER) (default 0))
	(slot GreixosMonoOPoliinsat (type INTEGER) (default 0))
	(slot GreixosTrans (type INTEGER) (default 0))
)


;;;------------------------------------------------------------------------------------------------------------------------------------------------------
;;;----------  					FUNCIONES					 		---------- 								EXTRAS
;;;-------------------------------------------------------------------------------------------------------------------------------------------------------

;;; Funcion para hacer una pregunta general
(deffunction MAIN::pregunta-general (?pregunta)
	(format t "%s" ?pregunta)
	(bind ?respuesta (read))
	?respuesta
)

;;; Funcion para hacer una pregunta con respuesta en un rango dado
(deffunction MAIN::pregunta-numerica (?pregunta ?rangini ?rangfi)
	(format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
	(bind ?respuesta (read))
	(while (not(and(>= ?respuesta ?rangini)(<= ?respuesta ?rangfi))) do
		(format t "%s? [%d, %d] " ?pregunta ?rangini ?rangfi)
		(bind ?respuesta (read))
	)
	?respuesta
)

;;; Funcion para hacer una pregunta con un conjunto definido de valores de repuesta
(deffunction MAIN::pregunta-lista (?pregunta)
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
	(not(executat))
	=>
	(assert (executat))
	(reset)
	(printout t crlf)
	(printout t "--------------------------------------------------------------" crlf)
	(printout t "------ Sistema de Recomendacion de un Menú semanal -----" crlf)
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
	=>
	(bind ?q (pregunta-general "What is your gender? [M F Indef]:  "))
	(switch ?q
		(case M then (assert(Genere M)))
		(case F then (assert(Genere F)))
		(case Indef then (assert(Genere Indef)))
	)
)

(defrule PREGUNTES::preguntar_edat "regla para saber la franja de edad en que se encuantra"
	(nou_usuari)
	=>
		(bind ?q (pregunta-numerica "How old are you?" 65 120))
	(if (and (> ?q 65) (< ?q 75)) then
        (assert(Edat 1)))

    (if (and (> ?q 74) (< ?q 90)) then
        (assert(Edat 2)))

    (if (> ?q 89) then
        (assert(Edat 3)))
)

(defrule PREGUNTES::preguntar_activitat_fisica "regla para saber la cantidad de actividad física que realiza el usuario"
	(nou_usuari)
	=>
	(bind ?q (pregunta-numerica "How often do you practice sport? [barely(1) regularly(2) often(3)]:  " 1 3))
	(switch ?q
		(case P then (assert(Actividad P)))
		(case R then (assert(Actividad R)))
		(case M then (assert(Actividad M)))
	)
)

(defrule PREGUNTES::preguntar_temporada "regla para saber la temporada del año en que nos encontramos"
	(nou_usuari)
	=>
	(bind ?q (pregunta-numerica "What season of the year are we in? [Winter(1) Spring(2) Summer(3) Autumn(4)]:  " 1 4))
	(switch ?q
		(case 1 then (assert(Temporada Hivern)))
		(case 2 then (assert(Temporada Primavera)))
		(case 3 then (assert(Temporada Estiu)))
		(case 4 then (assert(Temporada Tardor)))
	)
)


;DEFINIM LES RESTRICCIONS
(defrule PREGUNTES::preguntar_alergies_restriccions "regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
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
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Restrictions: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fish " crlf)
	(printout t "3. Fruit" crlf)
	(printout t "4. Dairy (Lactic)" crlf)
	(printout t "5. Gluten" crlf)
	(printout t "6. Specific food" crlf)
	(bind ?rest (pregunta-lista "Separate your answer with a blank between each identifier (can be multiple) :"))

	(progn$ (?it ?rest)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(Restriccio Carn)))
			(case 2 then   (assert(Restriccio Peix)))
			(case 3 then   (assert(Restriccio Fruita)))
			(case 4 then   (assert(Restriccio Lactic)))
			(case 5 then   (assert(Restriccio Gluten)))
			(case 6 then
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
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Preferences of food you would rather not eat: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fish " crlf)
	(printout t "3. Fruit" crlf)
	(printout t "4. Nuts" crlf)
	(printout t "5. Dairy" crlf)
	(printout t "6. Select to write specific food products" crlf)
	(bind ?pref (pregunta-lista "Separate your answer with a blank between each identifier (in case there are several) : "))

	(progn$ (?it ?pref)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(PreferenciaN Carn)))
			(case 2 then   (assert(PreferenciaN Peix)))
			(case 3 then   (assert(PreferenciaN Fruita)))
			(case 4 then   (assert(PreferenciaN Fruits_secs)))
			(case 5 then   (assert(PreferenciaN Lactic)))
			(case 6 then
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
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Preferences of food you would like to eat: " crlf)
	(printout t "1. Meet " crlf)
	(printout t "2. Fish " crlf)
	(printout t "3. Fruit" crlf)
	(printout t "4. Nuts" crlf)
	(printout t "5. Dairy" crlf)
	(printout t "6. Select to write specific food products" crlf)
	(bind ?pref (pregunta-lista "Separate your answer with a blank between each identifier (in case there are several) : "))

	(progn$ (?it ?pref)	;Per a cadascun dels elements seleccionats
		(switch ?it
			(case 1 then   (assert(PreferenciaP Carn)))
			(case 2 then   (assert(PreferenciaP Peix)))
			(case 3 then   (assert(PreferenciaP Fruita)))
			(case 4 then   (assert(PreferenciaP Fruits_secs)))
			(case 5 then   (assert(PreferenciaP Lactic)))
			(case 6 then
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
      =>
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

(defrule INFERIR_DADES::doesntDoAnything "Here we would add the different rules"
  (nou_usuari)
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
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))
	(assert (PreferenciesN S))
	(assert (PreferenciesAfegidesN))

	(assert (PreferenciaP Lactic))
	(assert (PreferenciaP Peix))
	;afegir carns amb poc greix
	(assert (PreferenciaP Cereals))
	(assert (PreferenciaP Patata))
	(assert (PreferenciaP Llegums))
	(assert (PreferenciaP Greixos))

	(assert (PreferenciaN Chocolata))
	(assert (PreferenciaN Carnsvermelles))
	(assert (PreferenciaN Ramen))
	(assert (PreferenciaN Begudesambsucre))
	(assert (PreferenciaN Mostassa))
	(assert (PreferenciaN regaliz))
	(assert (PreferenciaN patatas))
	(assert (PreferenciaN begudesalcoholicas))
	(assert (PreferenciaN begudesambgas))
)

(defrule MALALTIES::diabetis "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	=>

	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))
	(assert (PreferenciesN S))
	(assert (PreferenciesAfegidesN))

	(assert (PreferenciaP Plàtan))
	(assert (PreferenciaP Arandanos))
	(assert (PreferenciaP Semillas))
	(assert (PreferenciaP Fruits_secs))
	(assert (PreferenciaP Canela))
	(assert (PreferenciaP Trigo))
	(assert (PreferenciaP Olives))
	(assert (PreferenciaP Espinacs))
	(assert (PreferenciaP Remolacha))
	(assert (PreferenciaP Chucrut))

	(assert (PreferenciaN alimentosazucarados))
	(assert (PreferenciaN alimentosconsodio))
	(assert (PreferenciaN harinasrefinadas))
	(assert (PreferenciaN Lactic))
	(assert (PreferenciaN mel))
	(assert (PreferenciaN carmels))
	(assert (PreferenciaN chocolatablanca))
	(assert (PreferenciaN donuts))
	(assert (PreferenciaN sucre))
	(assert (PreferenciaN sucre de fruita))
	(assert (PreferenciaN bolleria en general))
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



(defrule FILTRAT::filtremPlatsRestringuits "aqui intentem potenciar els plats que tenen productes de temporada"
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

(defrule FILTRAT::filtremIngredientsRestringits
		(nou_usuari)
		(Nutrient ?N)
		(Quantitat_nutrient ?Q)
		?plat <- (object (is-a Plat))

		=>
		(bind ?i 1)
		(bind ?FI FALSE)

			(while (and (eq ?FI FALSE) (<= ?i (length$ (send ?plat get-Ingredients))))
			do
				(bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
				(if (member$ (send ?ingredient get-Nutrients) ?N) then
					(bind ?j 1)
					(while (and (eq ?FI FALSE) (<= ?i (length$ (send ?ingredient get-Nutrients))))
						(bind ?nutrient (nth$ ?i (send ?I get-Nutrients))) ;agafem el n-èssim ingredient
						(if (and (= ?nutrient ?N)(< ?Q ?nutrient get-Quantitat))
							(printout t " Eliminem el plat " (instance-name ?plat) crlf)
							(send ?plat delete)
							(bind ?FI TRUE)
						)
						(bind ?j (+ ?j 1))
					)
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
    =>
    (assert (restriccionsNutricionalsDiaria))
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
	=>
	(assert (infoNutricionalPlat (plat ?plat)))	;creem la informacio nutricional del plat
)


<<<<<<< HEAD
(defrule MENUS::obtenirInfoNutricionalPlat "aqui sumarem la informacio nutricional de cada ingredient del plat"
(nou_usuari)

?plat <- (object (is-a Plat))
(not(ValorNutricional ?plat))

?infoPlat <- (infoNutricionalPlat (plat ?plat)(Vitamines ?vit) (Proteines ?prot) (Hidrats_de_carboni ?hid) (GreixosMonoOPoliinsat ?gmp) (GreixosTrans ?gt) (Aigua ?a) (Minerals ?m) (Fibra ?f))

=>
(bind ?i 1)
(while (<= ?i (length$ (send ?plat get-Ingredients)))	;Recorrem tots els ingredients
	do
		(bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
		(bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
		(bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))

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

                        (case Greixos_mono_o_poliinsat then (bind ?gmp (+ ?quantitatNova ?gmp)))

                        (case Greixos_trans then (bind ?gt (+ ?quantitatNova ?gt)))
                    )

		(bind ?j (+ ?j 1))
		)

		(bind ?i (+ ?i 1))
 )
 (modify ?infoPlat (Vitamines ?vit) (Proteines ?prot) (Hidrats_de_carboni ?hid) (GreixosMonoOPoliinsat ?gmp) (GreixosTrans ?gt) (Aigua ?a) (Minerals ?m) (Fibra ?f))
 (assert (ValorNutricional ?plat))
 (assert (ValorsNutricionals afegits))
)


=======
>>>>>>> 678f4f610f6b0d711a50e89f87cb841fb36366c9
;aixo ho divideix en tipus i a més ens ho ordena
(defrule MENUS::dividirEnTipusPlats "Ara dividim tots els plats que han quedat en esmorzar, dinar primer i segon plat, sopar primer i segon plat i postres"
    (declare (salience 1))
	(nou_usuari)
	(not (FI))

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
    (not(FI))
    (Esmorzars omplerts)
    (not (DinarP omplerts))
    ?pph <- (PrimeraPosicio ?)
    ?cc <- (counter ?)
    =>
    (assert (PrimeraPosicio 1))
    (assert (counter 1))
    (assert (DinarP omplerts))
)


(defrule MENUS::completarMenu "Completem el menu amb els plats que falten"
(declare (salience -2))
(nou_usuari)
(DinarP omplerts)
(Esmorzars omplerts)
(menusDiaris creats)
(not (menuCompletat))
(ValorsNutricionals afegits)

;menus
?menu1 <- (menuDiari (dia 1))
?menu2 <- (menuDiari (dia 2))
?menu3 <- (menuDiari (dia 3))
?menu4 <- (menuDiari (dia 4))
?menu5 <- (menuDiari (dia 5))
?menu6 <- (menuDiari (dia 6))
?menu7 <- (menuDiari (dia 7))


;anem a obtenir els limits nutricionals
(restriccionsNutricionalsDiaria (kilocaloriesMinimes ?km) (kilocaloriesMaximes ?kM) (vitaminesMinimes ?vm) (hidratsCarboniMinim ?hcm)
(grasasTransMaximes ?gtM) (proteinesMinimes ?pm) (proteinesMaximes ?pM) (fibraMinima ?fm) (mineralsMinims ?mm))

;agafem els possibles plats DILLUNS
?recDS1 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS1))
?recDPostres1 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres1))
?recSP1 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP1))
?recSS1 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS1))
?recSPostres1 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres1))

;agafem els possibles plats DIMARTS
?recDS2 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS2))
?recDPostres2 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres2))
?recSP2 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP2))
?recSS2 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS2))
?recSPostres2 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres2))

;agafem els possibles plats DIMECRES
?recDS3 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS3))
?recDPostres3 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres3))
?recSP3 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP3))
?recSS3 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS3))
?recSPostres3 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres3))

;agafem els possibles plats DIJOUS
?recDS4 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS4))
?recDPostres4 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres4))
?recSP4 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP4))
?recSS4 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS4))
?recSPostres4 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres4))

;agafem els possibles plats DIVENDRES
?recDS5 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS5))
?recDPostres5 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres5))
?recSP5 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP5))
?recSS5 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS5))
?recSPostres5 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres5))

;agafem els possibles plats DISSABTE
?recDS6 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS6))
?recDPostres6 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres6))
?recSP6 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP6))
?recSS6 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS6))
?recSPostres6 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres6))

;agafem els possibles plats DIUMENGE
?recDS7 <- (solucionOrdenadaDS (posicio ?posDS) (plat ?platDS7))
?recDPostres7 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres7))
?recSP7 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP7))
?recSS7 <- (solucionOrdenadaDS (posicio ?posSS) (plat ?platSS7))
?recSPostres7 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres7))


;Agafem la informacio nutricional dels plats
;(infoNutricionalPlat (plat ?platDS1) (Vitamines ?vit1) (Proteines ?prot1) (Hidrats_de_carboni ?hid1) (GreixosMonoOPoliinsat ?gmp1) (GreixosTrans ?gt1) (Aigua ?a1) (Minerals ?m1) (Fibra ?f1))
;(infoNutricionalPlat(plat ?platSP1) (Vitamines ?vit2) (Proteines ?prot2) (Hidrats_de_carboni ?hid2) (GreixosMonoOPoliinsat ?gmp2) (GreixosTrans ?gt2) (Aigua ?a2) (Minerals ?m2) (Fibra ?f2))
;(infoNutricionalPlat(plat ?platSS1) (Vitamines ?vit3) (Proteines ?prot3) (Hidrats_de_carboni ?hid3) (GreixosMonoOPoliinsat ?gmp3) (GreixosTrans ?gt3) (Aigua ?a3) (Minerals ?m3) (Fibra ?f3))
;(infoNutricionalPlat(plat ?platDPostres1) (Vitamines ?vit4) (Proteines ?prot4) (Hidrats_de_carboni ?hid4) (GreixosMonoOPoliinsat ?gmp4) (GreixosTrans ?gt4) (Aigua ?a4) (Minerals ?m4) (Fibra ?f4))
;(infoNutricionalPlat(plat ?platSPostres1) (Vitamines ?vit5) (Proteines ?prot5) (Hidrats_de_carboni ?hid5) (GreixosMonoOPoliinsat ?gmp5) (GreixosTrans ?gt5) (Aigua ?a5) (Minerals ?m5) (Fibra ?f5))

;(infoNutricionalPlat(plat ?platDS2) (Vitamines ?vit6) (Proteines ?prot6) (Hidrats_de_carboni ?hid6) (GreixosMonoOPoliinsat ?gmp6) (GreixosTrans ?gt6) (Aigua ?a6) (Minerals ?m6) (Fibra ?f6))
;(infoNutricionalPlat(plat ?platSP2) (Vitamines ?vit7) (Proteines ?prot7) (Hidrats_de_carboni ?hid7) (GreixosMonoOPoliinsat ?gmp7) (GreixosTrans ?gt7) (Aigua ?a7) (Minerals ?m7) (Fibra ?f7))
;(infoNutricionalPlat(plat ?platSS2) (Vitamines ?vit8) (Proteines ?prot8) (Hidrats_de_carboni ?hid8) (GreixosMonoOPoliinsat ?gmp8) (GreixosTrans ?gt8) (Aigua ?a8) (Minerals ?m8) (Fibra ?f8))
;(infoNutricionalPlat(plat ?platDPostres2) (Vitamines ?vit9) (Proteines ?prot9) (Hidrats_de_carboni ?hid9) (GreixosMonoOPoliinsat ?gmp9) (GreixosTrans ?gt9) (Aigua ?a9) (Minerals ?m9) (Fibra ?f9))
;(infoNutricionalPlat(plat ?platSPostres2) (Vitamines ?vit10) (Proteines ?prot10) (Hidrats_de_carboni ?hid10) (GreixosMonoOPoliinsat ?gmp10) (GreixosTrans ?gt10) (Aigua ?a10) (Minerals ?m10) (Fibra ?f10))

;(infoNutricionalPlat(plat ?platDS3) (Vitamines ?vit11) (Proteines ?prot11) (Hidrats_de_carboni ?hid11) (GreixosMonoOPoliinsat ?gmp11) (GreixosTrans ?gt11) (Aigua ?a11) (Minerals ?m11) (Fibra ?f11))
;(infoNutricionalPlat(plat ?platSP3) (Vitamines ?vit12) (Proteines ?prot12) (Hidrats_de_carboni ?hid12) (GreixosMonoOPoliinsat ?gmp12) (GreixosTrans ?gt12) (Aigua ?a12) (Minerals ?m12) (Fibra ?f12))
;(infoNutricionalPlat(plat ?platSS3) (Vitamines ?vit13) (Proteines ?prot13) (Hidrats_de_carboni ?hid13) (GreixosMonoOPoliinsat ?gmp13) (GreixosTrans ?gt13) (Aigua ?a13) (Minerals ?m13) (Fibra ?f13))
;(infoNutricionalPlat(plat ?platDPostres3) (Vitamines ?vit14) (Proteines ?prot14) (Hidrats_de_carboni ?hid14) (GreixosMonoOPoliinsat ?gmp14) (GreixosTrans ?gt14) (Aigua ?a14) (Minerals ?m14) (Fibra ?f14))
;(infoNutricionalPlat(plat ?platSPostres3) (Vitamines ?vit15) (Proteines ?prot15) (Hidrats_de_carboni ?hid15) (GreixosMonoOPoliinsat ?gmp15) (GreixosTrans ?gt15) (Aigua ?a15) (Minerals ?m15) (Fibra ?f15))

;(infoNutricionalPlat (plat ?platDS4) (Vitamines ?vit16) (Proteines ?prot16) (Hidrats_de_carboni ?hid16) (GreixosMonoOPoliinsat ?gmp16) (GreixosTrans ?gt16) (Aigua ?a16) (Minerals ?m16) (Fibra ?f16))
;(infoNutricionalPlat (plat ?platSP4) (Vitamines ?vit17) (Proteines ?prot17) (Hidrats_de_carboni ?hid17) (GreixosMonoOPoliinsat ?gmp17) (GreixosTrans ?gt17) (Aigua ?a17) (Minerals ?m17) (Fibra ?f17))
;(infoNutricionalPlat (plat ?platSS4) (Vitamines ?vit18) (Proteines ?prot18) (Hidrats_de_carboni ?hid18) (GreixosMonoOPoliinsat ?gmp18) (GreixosTrans ?gt18) (Aigua ?a18) (Minerals ?m18) (Fibra ?f18))
;(infoNutricionalPlat (plat ?platDPostres4) (Vitamines ?vit19) (Proteines ?prot19) (Hidrats_de_carboni ?hid19) (GreixosMonoOPoliinsat ?gmp19) (GreixosTrans ?gt19) (Aigua ?a19) (Minerals ?m19) (Fibra ?f19))
;(infoNutricionalPlat(plat ?platSPostres4) (Vitamines ?vit20) (Proteines ?prot20) (Hidrats_de_carboni ?hid20) (GreixosMonoOPoliinsat ?gmp20) (GreixosTrans ?gt20) (Aigua ?a20) (Minerals ?m20) (Fibra ?f20))

;(infoNutricionalPlat(plat ?platDS5) (Vitamines ?vit21) (Proteines ?prot21) (Hidrats_de_carboni ?hid21) (GreixosMonoOPoliinsat ?gmp21) (GreixosTrans ?gt21) (Aigua ?a21) (Minerals ?m21) (Fibra ?f21))
;(infoNutricionalPlat(plat ?platSP5) (Vitamines ?vit22) (Proteines ?prot22) (Hidrats_de_carboni ?hid22) (GreixosMonoOPoliinsat ?gmp22) (GreixosTrans ?gt22) (Aigua ?a22) (Minerals ?m22) (Fibra ?f22))
;(infoNutricionalPlat(plat ?platSS5) (Vitamines ?vit23) (Proteines ?prot23) (Hidrats_de_carboni ?hid23) (GreixosMonoOPoliinsat ?gmp23) (GreixosTrans ?gt23) (Aigua ?a23) (Minerals ?m23) (Fibra ?f23))
;(infoNutricionalPlat(plat ?platDPostres5) (Vitamines ?vit24) (Proteines ?prot24) (Hidrats_de_carboni ?hid24) (GreixosMonoOPoliinsat ?gmp24) (GreixosTrans ?gt24) (Aigua ?a24) (Minerals ?m24) (Fibra ?f24))
;(infoNutricionalPlat(plat ?platSPostres5) (Vitamines ?vit25) (Proteines ?prot25) (Hidrats_de_carboni ?hid25) (GreixosMonoOPoliinsat ?gmp25) (GreixosTrans ?gt25) (Aigua ?a25) (Minerals ?m25) (Fibra ?f25))

;(infoNutricionalPlat (plat ?platDS6) (Vitamines ?vit26) (Proteines ?prot26) (Hidrats_de_carboni ?hid26) (GreixosMonoOPoliinsat ?gmp26) (GreixosTrans ?gt26) ;(Aigua ?a26) (Minerals ?m26) (Fibra ?f26))
;(infoNutricionalPlat (plat ?platSP6) (Vitamines ?vit27) (Proteines ?prot27) (Hidrats_de_carboni ?hid27) (GreixosMonoOPoliinsat ?gmp27) (GreixosTrans ?gt27) (Aigua ?a27) (Minerals ?m27) (Fibra ?f27))
;(infoNutricionalPlat (plat ?platSS6) (Vitamines ?vit28) (Proteines ?prot28) (Hidrats_de_carboni ?hid28) (GreixosMonoOPoliinsat ?gmp28) (GreixosTrans ?gt28) (Aigua ?a28) (Minerals ?m28) (Fibra ?f28))
;(infoNutricionalPlat (plat ?platDPostres6) (Vitamines ?vit29) (Proteines ?prot29) (Hidrats_de_carboni ?hid29) (GreixosMonoOPoliinsat ?gmp29) (GreixosTrans ?gt29) (Aigua ?a29) (Minerals ?m29) (Fibra ?f29))
;(infoNutricionalPlat (plat ?platSPostres6) (Vitamines ?vit30) (Proteines ?prot30) (Hidrats_de_carboni ?hid30) (GreixosMonoOPoliinsat ?gmp30) (GreixosTrans ?gt30) (Aigua ?a30) (Minerals ?m30) (Fibra ?f30))

;(infoNutricionalPlat (plat ?platDS7) (Vitamines ?vit31) (Proteines ?prot31) (Hidrats_de_carboni ?hid31) (GreixosMonoOPoliinsat ?gmp31) (GreixosTrans ?gt31) (Aigua ?a31) (Minerals ?m31) (Fibra ?f31))
;(infoNutricionalPlat (plat ?platSP7) (Vitamines ?vit32) (Proteines ?prot32) (Hidrats_de_carboni ?hid32) (GreixosMonoOPoliinsat ?gmp32) (GreixosTrans ?gt32) (Aigua ?a32) (Minerals ?m32) (Fibra ?f32))
;(infoNutricionalPlat (plat ?platSS7) (Vitamines ?vit33) (Proteines ?prot33) (Hidrats_de_carboni ?hid33) (GreixosMonoOPoliinsat ?gmp33) (GreixosTrans ?gt33) (Aigua ?a33) (Minerals ?m33) (Fibra ?f33))
;(infoNutricionalPlat (plat ?platDPostres7) (Vitamines ?vit34) (Proteines ?prot34) (Hidrats_de_carboni ?hid34) (GreixosMonoOPoliinsat ?gmp34) (GreixosTrans ?gt34) (Aigua ?a34) (Minerals ?m34) (Fibra ?f34))
;(infoNutricionalPlat (plat ?platSPostres7) (Vitamines ?vit35) (Proteines ?prot35) (Hidrats_de_carboni ?hid35) (GreixosMonoOPoliinsat ?gmp35) (GreixosTrans ?gt35) (Aigua ?a35) (Minerals ?m35) (Fibra ?f35))


;anem a comprovar si compleix les restriccions
;comprovar no menjar primer i segon plat del mateix tipus
;comprovar kcal
;comprovar fibra
;comprovar hidrats
;no repetir postres en un mateix dia

;FALTA TOT AIXO

=>
(modify ?menu1 (dinarSegon ?platDS1) (soparPrimer ?platSP1) (soparSegon ?platSS1)(dinarPostres ?platDPostres1)(soparPostres ?platSPostres1))
(modify ?menu2 (dinarSegon ?platDS2) (soparPrimer ?platSP2) (soparSegon ?platSS2)(dinarPostres ?platDPostres2)(soparPostres ?platSPostres2))
(modify ?menu3 (dinarSegon ?platDS3) (soparPrimer ?platSP3) (soparSegon ?platSS3)(dinarPostres ?platDPostres3)(soparPostres ?platSPostres3))
(modify ?menu4 (dinarSegon ?platDS4) (soparPrimer ?platSP4) (soparSegon ?platSS4)(dinarPostres ?platDPostres4)(soparPostres ?platSPostres4))
(modify ?menu5 (dinarSegon ?platDS5) (soparPrimer ?platSP5) (soparSegon ?platSS5)(dinarPostres ?platDPostres5)(soparPostres ?platSPostres5))
(modify ?menu6 (dinarSegon ?platDS6) (soparPrimer ?platSP6) (soparSegon ?platSS6)(dinarPostres ?platDPostres6)(soparPostres ?platSPostres6))
(modify ?menu7 (dinarSegon ?platDS7) (soparPrimer ?platSP7) (soparSegon ?platSS7)(dinarPostres ?platDPostres7)(soparPostres ?platSPostres7))

(assert (menuCompletat))
(assert (dia 1))
)


(defrule MENUS::MostrarMenuDefinitiu "Aquesta regla mostra els menus definitius"
    (nou_usuari)
    (menuCompletat)
    ?dd <- (dia ?d)
    (test (<= ?d 7))

    ?menu <- (menuDiari (dia ?d) (esmorzar ?e) (dinarPrimer ?dp) (dinarSegon ?ds) (dinarPostres ?dpostres) (soparPrimer ?sp) (soparSegon ?ss)(soparPostres ?spostres))
    =>

    (switch ?d
		(case 1 then (printout t "MONDAY" crlf))
		(case 2 then (printout t "TUESDAY" crlf))
		(case 3 then (printout t "WEDNESDAY" crlf))
		(case 4 then (printout t "THURSDAY" crlf))
		(case 5 then (printout t "FRIDAY" crlf))
		(case 6 then (printout t "SATURDAY" crlf))
		(case 7 then (printout t "SUNDAY" crlf)))
        (printout t "----------------------------------- " crlf)

        (printout t "BREAKFAST : " (send ?e get-Nom) crlf)
        (printout t crlf)
        (printout t "LUNCH :" crlf)
        (printout t "First dish: " (send ?dp get-Nom) crlf)
        (printout t "Second dish : " ?ds crlf)
        (printout t "Desert : " ?dpostres crlf)
        (printout t crlf)
        (printout t "DINNER :" crlf)
        (printout t "First dish : " ?sp crlf)
        (printout t "Second dish : " ?ss crlf)
        (printout t "Desert : " ?spostres crlf)
        (printout t crlf)

        (retract ?dd)
        (assert (dia (+ ?d 1)))
        (assert (FI))
)
