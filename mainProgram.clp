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
	(single-slot Valor_energetic
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
	(single-slot Valor_energetic
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

([I2069] of InfoIngredient
    (Familia Herbs)
    (Nom_ingredient "Vinegar")
    (Nutrients [I2069N0] [I2069N1] [I2069N2] [I2069N3] [I2069N4])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 88))

([I2069N0] of  Nutrient
    (Quantitat_nutrient 76.45)
    (Tipus_nutrient Aigua))
([I2069N1] of  Nutrient
    (Quantitat_nutrient 0.19)
    (Tipus_nutrient Minerals))
([I2069N2] of  Nutrient
    (Quantitat_nutrient 0.49)
    (Tipus_nutrient Proteines))
([I2069N3] of  Nutrient
    (Quantitat_nutrient 17.03)
    (Tipus_nutrient Hidrats_de_carboni))
([I2069N4] of  Nutrient
    (Quantitat_nutrient 14.95)
    (Tipus_nutrient Sucre))


([I4002] of InfoIngredient
    (Familia Fats_Oils)
    (Nom_ingredient "Lard")
    (Nutrients [I4002N0] [I4002N1])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 902))

([I4002N0] of  Nutrient
    (Quantitat_nutrient 100.0)
    (Tipus_nutrient Greixos))
([I4002N1] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Colesterol))


([I7051] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Olive")
    (Nutrients [I7051N0] [I7051N1] [I7051N2] [I7051N3] [I7051N4] [I7051N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 235))

([I7051N0] of  Nutrient
    (Quantitat_nutrient 58.2)
    (Tipus_nutrient Aigua))
([I7051N1] of  Nutrient
    (Quantitat_nutrient 1.52)
    (Tipus_nutrient Minerals))
([I7051N2] of  Nutrient
    (Quantitat_nutrient 11.8)
    (Tipus_nutrient Proteines))
([I7051N3] of  Nutrient
    (Quantitat_nutrient 9.2)
    (Tipus_nutrient Hidrats_de_carboni))
([I7051N4] of  Nutrient
    (Quantitat_nutrient 10.5)
    (Tipus_nutrient Greixos))
([I7051N5] of  Nutrient
    (Quantitat_nutrient 0.04)
    (Tipus_nutrient Colesterol))


([I7056] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Peppered")
    (Nutrients [I7056N0] [I7056N1] [I7056N2] [I7056N3] [I7056N4] [I7056N5] [I7056N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 149))

([I7056N0] of  Nutrient
    (Quantitat_nutrient 67.4)
    (Tipus_nutrient Aigua))
([I7056N1] of  Nutrient
    (Quantitat_nutrient 1.37)
    (Tipus_nutrient Minerals))
([I7056N2] of  Nutrient
    (Quantitat_nutrient 17.3)
    (Tipus_nutrient Proteines))
([I7056N3] of  Nutrient
    (Quantitat_nutrient 4.53)
    (Tipus_nutrient Hidrats_de_carboni))
([I7056N4] of  Nutrient
    (Quantitat_nutrient 6.37)
    (Tipus_nutrient Greixos))
([I7056N5] of  Nutrient
    (Quantitat_nutrient 0.05)
    (Tipus_nutrient Colesterol))
([I7056N6] of  Nutrient
    (Quantitat_nutrient 4.61)
    (Tipus_nutrient Sucre))


([I7977] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Ham")
    (Nutrients [I7977N0] [I7977N1] [I7977N2] [I7977N3] [I7977N4] [I7977N5] [I7977N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 141))

([I7977N0] of  Nutrient
    (Quantitat_nutrient 64.59)
    (Tipus_nutrient Aigua))
([I7977N1] of  Nutrient
    (Quantitat_nutrient 1.71)
    (Tipus_nutrient Minerals))
([I7977N2] of  Nutrient
    (Quantitat_nutrient 18.52)
    (Tipus_nutrient Proteines))
([I7977N3] of  Nutrient
    (Quantitat_nutrient 10.7)
    (Tipus_nutrient Hidrats_de_carboni))
([I7977N4] of  Nutrient
    (Quantitat_nutrient 2.71)
    (Tipus_nutrient Greixos))
([I7977N5] of  Nutrient
    (Quantitat_nutrient 0.05)
    (Tipus_nutrient Colesterol))
([I7977N6] of  Nutrient
    (Quantitat_nutrient 10.68)
    (Tipus_nutrient Sucre))


([I9039] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Avocados")
    (Nutrients [I9039N0] [I9039N1] [I9039N2] [I9039N3] [I9039N4] [I9039N5] [I9039N6] [I9039N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 120))

([I9039N0] of  Nutrient
    (Quantitat_nutrient 78.81)
    (Tipus_nutrient Aigua))
([I9039N1] of  Nutrient
    (Quantitat_nutrient 0.43)
    (Tipus_nutrient Minerals))
([I9039N2] of  Nutrient
    (Quantitat_nutrient 2.23)
    (Tipus_nutrient Proteines))
([I9039N3] of  Nutrient
    (Quantitat_nutrient 0.02)
    (Tipus_nutrient Vitamines))
([I9039N4] of  Nutrient
    (Quantitat_nutrient 5.6)
    (Tipus_nutrient Fibra))
([I9039N5] of  Nutrient
    (Quantitat_nutrient 7.82)
    (Tipus_nutrient Hidrats_de_carboni))
([I9039N6] of  Nutrient
    (Quantitat_nutrient 7.06)
    (Tipus_nutrient Greixos))
([I9039N7] of  Nutrient
    (Quantitat_nutrient 2.42)
    (Tipus_nutrient Sucre))


([I9041] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Bananas")
    (Nutrients [I9041N0] [I9041N1] [I9041N2] [I9041N3] [I9041N4] [I9041N5] [I9041N6] [I9041N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 346))

([I9041N0] of  Nutrient
    (Quantitat_nutrient 3.0)
    (Tipus_nutrient Aigua))
([I9041N1] of  Nutrient
    (Quantitat_nutrient 1.7)
    (Tipus_nutrient Minerals))
([I9041N2] of  Nutrient
    (Quantitat_nutrient 3.89)
    (Tipus_nutrient Proteines))
([I9041N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I9041N4] of  Nutrient
    (Quantitat_nutrient 9.9)
    (Tipus_nutrient Fibra))
([I9041N5] of  Nutrient
    (Quantitat_nutrient 88.28)
    (Tipus_nutrient Hidrats_de_carboni))
([I9041N6] of  Nutrient
    (Quantitat_nutrient 1.81)
    (Tipus_nutrient Greixos))
([I9041N7] of  Nutrient
    (Quantitat_nutrient 37.3)
    (Tipus_nutrient Sucre))


([I9134] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Grapes")
    (Nutrients [I9134N0] [I9134N1] [I9134N2] [I9134N3] [I9134N4] [I9134N5] [I9134N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 76))

([I9134N0] of  Nutrient
    (Quantitat_nutrient 79.53)
    (Tipus_nutrient Aigua))
([I9134N1] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Minerals))
([I9134N2] of  Nutrient
    (Quantitat_nutrient 0.48)
    (Tipus_nutrient Proteines))
([I9134N3] of  Nutrient
    (Quantitat_nutrient 2.6)
    (Tipus_nutrient Fibra))
([I9134N4] of  Nutrient
    (Quantitat_nutrient 19.65)
    (Tipus_nutrient Hidrats_de_carboni))
([I9134N5] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Greixos))
([I9134N6] of  Nutrient
    (Quantitat_nutrient 11.05)
    (Tipus_nutrient Sucre))


([I9140] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Guavas")
    (Nutrients [I9140N0] [I9140N1] [I9140N2] [I9140N3] [I9140N4] [I9140N5] [I9140N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 69))

([I9140N0] of  Nutrient
    (Quantitat_nutrient 80.66)
    (Tipus_nutrient Aigua))
([I9140N1] of  Nutrient
    (Quantitat_nutrient 0.39)
    (Tipus_nutrient Minerals))
([I9140N2] of  Nutrient
    (Quantitat_nutrient 0.58)
    (Tipus_nutrient Proteines))
([I9140N3] of  Nutrient
    (Quantitat_nutrient 0.04)
    (Tipus_nutrient Vitamines))
([I9140N4] of  Nutrient
    (Quantitat_nutrient 5.4)
    (Tipus_nutrient Fibra))
([I9140N5] of  Nutrient
    (Quantitat_nutrient 17.36)
    (Tipus_nutrient Hidrats_de_carboni))
([I9140N6] of  Nutrient
    (Quantitat_nutrient 0.6)
    (Tipus_nutrient Greixos))


([I9150] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Lemons")
    (Nutrients [I9150N0] [I9150N1] [I9150N2] [I9150N3] [I9150N4] [I9150N5] [I9150N6] [I9150N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 29))

([I9150N0] of  Nutrient
    (Quantitat_nutrient 88.98)
    (Tipus_nutrient Aigua))
([I9150N1] of  Nutrient
    (Quantitat_nutrient 0.19)
    (Tipus_nutrient Minerals))
([I9150N2] of  Nutrient
    (Quantitat_nutrient 1.1)
    (Tipus_nutrient Proteines))
([I9150N3] of  Nutrient
    (Quantitat_nutrient 0.05)
    (Tipus_nutrient Vitamines))
([I9150N4] of  Nutrient
    (Quantitat_nutrient 4.8)
    (Tipus_nutrient Fibra))
([I9150N5] of  Nutrient
    (Quantitat_nutrient 9.32)
    (Tipus_nutrient Hidrats_de_carboni))
([I9150N6] of  Nutrient
    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Greixos))
([I9150N7] of  Nutrient
    (Quantitat_nutrient 2.5)
    (Tipus_nutrient Sucre))


([I9184] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Melons")
    (Nutrients [I9184N0] [I9184N1] [I9184N2] [I9184N3] [I9184N4] [I9184N5] [I9184N6] [I9184N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 36))

([I9184N0] of  Nutrient
    (Quantitat_nutrient 89.82)
    (Tipus_nutrient Aigua))
([I9184N1] of  Nutrient
    (Quantitat_nutrient 0.27)
    (Tipus_nutrient Minerals))
([I9184N2] of  Nutrient
    (Quantitat_nutrient 0.54)
    (Tipus_nutrient Proteines))
([I9184N3] of  Nutrient
    (Quantitat_nutrient 0.02)
    (Tipus_nutrient Vitamines))
([I9184N4] of  Nutrient
    (Quantitat_nutrient 0.8)
    (Tipus_nutrient Fibra))
([I9184N5] of  Nutrient
    (Quantitat_nutrient 9.09)
    (Tipus_nutrient Hidrats_de_carboni))
([I9184N6] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Greixos))
([I9184N7] of  Nutrient
    (Quantitat_nutrient 8.12)
    (Tipus_nutrient Sucre))


([I9195] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Olives")
    (Nutrients [I9195N0] [I9195N1] [I9195N2] [I9195N3] [I9195N4] [I9195N5] [I9195N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 145))

([I9195N0] of  Nutrient
    (Quantitat_nutrient 75.28)
    (Tipus_nutrient Aigua))
([I9195N1] of  Nutrient
    (Quantitat_nutrient 1.67)
    (Tipus_nutrient Minerals))
([I9195N2] of  Nutrient
    (Quantitat_nutrient 1.03)
    (Tipus_nutrient Proteines))
([I9195N3] of  Nutrient
    (Quantitat_nutrient 3.3)
    (Tipus_nutrient Fibra))
([I9195N4] of  Nutrient
    (Quantitat_nutrient 3.84)
    (Tipus_nutrient Hidrats_de_carboni))
([I9195N5] of  Nutrient
    (Quantitat_nutrient 9.32)
    (Tipus_nutrient Greixos))
([I9195N6] of  Nutrient
    (Quantitat_nutrient 0.54)
    (Tipus_nutrient Sucre))


([I9205] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Oranges")
    (Nutrients [I9205N0] [I9205N1] [I9205N2] [I9205N3] [I9205N4] [I9205N5] [I9205N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 63))

([I9205N0] of  Nutrient
    (Quantitat_nutrient 82.3)
    (Tipus_nutrient Aigua))
([I9205N1] of  Nutrient
    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Minerals))
([I9205N2] of  Nutrient
    (Quantitat_nutrient 1.3)
    (Tipus_nutrient Proteines))
([I9205N3] of  Nutrient
    (Quantitat_nutrient 0.07)
    (Tipus_nutrient Vitamines))
([I9205N4] of  Nutrient
    (Quantitat_nutrient 7.5)
    (Tipus_nutrient Fibra))
([I9205N5] of  Nutrient
    (Quantitat_nutrient 15.5)
    (Tipus_nutrient Hidrats_de_carboni))
([I9205N6] of  Nutrient
    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Greixos))


([I9320] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Strawberries")
    (Nutrients [I9320N0] [I9320N1] [I9320N2] [I9320N3] [I9320N4] [I9320N5] [I9320N6] [I9320N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 96))

([I9320N0] of  Nutrient
    (Quantitat_nutrient 73.18)
    (Tipus_nutrient Aigua))
([I9320N1] of  Nutrient
    (Quantitat_nutrient 0.13)
    (Tipus_nutrient Minerals))
([I9320N2] of  Nutrient
    (Quantitat_nutrient 0.53)
    (Tipus_nutrient Proteines))
([I9320N3] of  Nutrient
    (Quantitat_nutrient 0.04)
    (Tipus_nutrient Vitamines))
([I9320N4] of  Nutrient
    (Quantitat_nutrient 1.9)
    (Tipus_nutrient Fibra))
([I9320N5] of  Nutrient
    (Quantitat_nutrient 25.92)
    (Tipus_nutrient Hidrats_de_carboni))
([I9320N6] of  Nutrient
    (Quantitat_nutrient 0.13)
    (Tipus_nutrient Greixos))
([I9320N7] of  Nutrient
    (Quantitat_nutrient 18.01)
    (Tipus_nutrient Sucre))


([I9326] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Watermelon")
    (Nutrients [I9326N0] [I9326N1] [I9326N2] [I9326N3] [I9326N4] [I9326N5] [I9326N6] [I9326N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 30))

([I9326N0] of  Nutrient
    (Quantitat_nutrient 91.45)
    (Tipus_nutrient Aigua))
([I9326N1] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Minerals))
([I9326N2] of  Nutrient
    (Quantitat_nutrient 0.61)
    (Tipus_nutrient Proteines))
([I9326N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I9326N4] of  Nutrient
    (Quantitat_nutrient 0.4)
    (Tipus_nutrient Fibra))
([I9326N5] of  Nutrient
    (Quantitat_nutrient 7.55)
    (Tipus_nutrient Hidrats_de_carboni))
([I9326N6] of  Nutrient
    (Quantitat_nutrient 0.15)
    (Tipus_nutrient Greixos))
([I9326N7] of  Nutrient
    (Quantitat_nutrient 6.2)
    (Tipus_nutrient Sucre))


([I9353] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Blueberries")
    (Nutrients [I9353N0] [I9353N1] [I9353N2] [I9353N3] [I9353N4] [I9353N5] [I9353N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 107))

([I9353N0] of  Nutrient
    (Quantitat_nutrient 70.63)
    (Tipus_nutrient Aigua))
([I9353N1] of  Nutrient
    (Quantitat_nutrient 0.09)
    (Tipus_nutrient Minerals))
([I9353N2] of  Nutrient
    (Quantitat_nutrient 0.56)
    (Tipus_nutrient Proteines))
([I9353N3] of  Nutrient
    (Quantitat_nutrient 5.9)
    (Tipus_nutrient Fibra))
([I9353N4] of  Nutrient
    (Quantitat_nutrient 28.32)
    (Tipus_nutrient Hidrats_de_carboni))
([I9353N5] of  Nutrient
    (Quantitat_nutrient 0.34)
    (Tipus_nutrient Greixos))
([I9353N6] of  Nutrient
    (Quantitat_nutrient 13.28)
    (Tipus_nutrient Sucre))


([I9367] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Cherries")
    (Nutrients [I9367N0] [I9367N1] [I9367N2] [I9367N3] [I9367N4] [I9367N5] [I9367N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 83))

([I9367N0] of  Nutrient
    (Quantitat_nutrient 77.61)
    (Tipus_nutrient Aigua))
([I9367N1] of  Nutrient
    (Quantitat_nutrient 0.19)
    (Tipus_nutrient Minerals))
([I9367N2] of  Nutrient
    (Quantitat_nutrient 0.73)
    (Tipus_nutrient Proteines))
([I9367N3] of  Nutrient
    (Quantitat_nutrient 4.3)
    (Tipus_nutrient Fibra))
([I9367N4] of  Nutrient
    (Quantitat_nutrient 21.07)
    (Tipus_nutrient Hidrats_de_carboni))
([I9367N5] of  Nutrient
    (Quantitat_nutrient 0.21)
    (Tipus_nutrient Greixos))
([I9367N6] of  Nutrient
    (Quantitat_nutrient 12.18)
    (Tipus_nutrient Sucre))


([I9379] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Plums")
    (Nutrients [I9379N0] [I9379N1] [I9379N2] [I9379N3] [I9379N4] [I9379N5] [I9379N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 89))

([I9379N0] of  Nutrient
    (Quantitat_nutrient 76.06)
    (Tipus_nutrient Aigua))
([I9379N1] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Minerals))
([I9379N2] of  Nutrient
    (Quantitat_nutrient 0.44)
    (Tipus_nutrient Proteines))
([I9379N3] of  Nutrient
    (Quantitat_nutrient 1.5)
    (Tipus_nutrient Fibra))
([I9379N4] of  Nutrient
    (Quantitat_nutrient 23.12)
    (Tipus_nutrient Hidrats_de_carboni))
([I9379N5] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Greixos))
([I9379N6] of  Nutrient
    (Quantitat_nutrient 21.58)
    (Tipus_nutrient Sucre))


([I9415] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Pears")
    (Nutrients [I9415N0] [I9415N1] [I9415N2] [I9415N3] [I9415N4] [I9415N5] [I9415N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 66))

([I9415N0] of  Nutrient
    (Quantitat_nutrient 83.31)
    (Tipus_nutrient Aigua))
([I9415N1] of  Nutrient
    (Quantitat_nutrient 0.16)
    (Tipus_nutrient Minerals))
([I9415N2] of  Nutrient
    (Quantitat_nutrient 0.44)
    (Tipus_nutrient Proteines))
([I9415N3] of  Nutrient
    (Quantitat_nutrient 7.1)
    (Tipus_nutrient Fibra))
([I9415N4] of  Nutrient
    (Quantitat_nutrient 15.79)
    (Tipus_nutrient Hidrats_de_carboni))
([I9415N5] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Greixos))
([I9415N6] of  Nutrient
    (Quantitat_nutrient 9.73)
    (Tipus_nutrient Sucre))


([I9504] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Apples")
    (Nutrients [I9504N0] [I9504N1] [I9504N2] [I9504N3] [I9504N4] [I9504N5] [I9504N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 63))

([I9504N0] of  Nutrient
    (Quantitat_nutrient 84.16)
    (Tipus_nutrient Aigua))
([I9504N1] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Minerals))
([I9504N2] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Proteines))
([I9504N3] of  Nutrient
    (Quantitat_nutrient 2.1)
    (Tipus_nutrient Fibra))
([I9504N4] of  Nutrient
    (Quantitat_nutrient 15.22)
    (Tipus_nutrient Hidrats_de_carboni))
([I9504N5] of  Nutrient
    (Quantitat_nutrient 0.18)
    (Tipus_nutrient Greixos))
([I9504N6] of  Nutrient
    (Quantitat_nutrient 11.68)
    (Tipus_nutrient Sucre))


([I9510] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Pineapple")
    (Nutrients [I9510N0] [I9510N1] [I9510N2] [I9510N3] [I9510N4] [I9510N5] [I9510N6] [I9510N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 50))

([I9510N0] of  Nutrient
    (Quantitat_nutrient 87.06)
    (Tipus_nutrient Aigua))
([I9510N1] of  Nutrient
    (Quantitat_nutrient 0.17)
    (Tipus_nutrient Minerals))
([I9510N2] of  Nutrient
    (Quantitat_nutrient 0.36)
    (Tipus_nutrient Proteines))
([I9510N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I9510N4] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Fibra))
([I9510N5] of  Nutrient
    (Quantitat_nutrient 12.18)
    (Tipus_nutrient Hidrats_de_carboni))
([I9510N6] of  Nutrient
    (Quantitat_nutrient 0.14)
    (Tipus_nutrient Greixos))
([I9510N7] of  Nutrient
    (Quantitat_nutrient 9.98)
    (Tipus_nutrient Sucre))


([I9520] of InfoIngredient
    (Familia Fruits)
    (Nom_ingredient "Kiwifruit")
    (Nutrients [I9520N0] [I9520N1] [I9520N2] [I9520N3] [I9520N4] [I9520N5] [I9520N6] [I9520N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 63))

([I9520N0] of  Nutrient
    (Quantitat_nutrient 82.44)
    (Tipus_nutrient Aigua))
([I9520N1] of  Nutrient
    (Quantitat_nutrient 0.37)
    (Tipus_nutrient Minerals))
([I9520N2] of  Nutrient
    (Quantitat_nutrient 1.02)
    (Tipus_nutrient Proteines))
([I9520N3] of  Nutrient
    (Quantitat_nutrient 0.16)
    (Tipus_nutrient Vitamines))
([I9520N4] of  Nutrient
    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Fibra))
([I9520N5] of  Nutrient
    (Quantitat_nutrient 15.79)
    (Tipus_nutrient Hidrats_de_carboni))
([I9520N6] of  Nutrient
    (Quantitat_nutrient 0.28)
    (Tipus_nutrient Greixos))
([I9520N7] of  Nutrient
    (Quantitat_nutrient 12.3)
    (Tipus_nutrient Sucre))


([I11206] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Cucumber")
    (Nutrients [I11206N0] [I11206N1] [I11206N2] [I11206N3] [I11206N4] [I11206N5] [I11206N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 12))

([I11206N0] of  Nutrient
    (Quantitat_nutrient 96.73)
    (Tipus_nutrient Aigua))
([I11206N1] of  Nutrient
    (Quantitat_nutrient 0.19)
    (Tipus_nutrient Minerals))
([I11206N2] of  Nutrient
    (Quantitat_nutrient 0.59)
    (Tipus_nutrient Proteines))
([I11206N3] of  Nutrient
    (Quantitat_nutrient 0.7)
    (Tipus_nutrient Fibra))
([I11206N4] of  Nutrient
    (Quantitat_nutrient 2.16)
    (Tipus_nutrient Hidrats_de_carboni))
([I11206N5] of  Nutrient
    (Quantitat_nutrient 0.16)
    (Tipus_nutrient Greixos))
([I11206N6] of  Nutrient
    (Quantitat_nutrient 1.38)
    (Tipus_nutrient Sucre))


([I11257] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Lettuce")
    (Nutrients [I11257N0] [I11257N1] [I11257N2] [I11257N3] [I11257N4] [I11257N5] [I11257N6] [I11257N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 16))

([I11257N0] of  Nutrient
    (Quantitat_nutrient 95.64)
    (Tipus_nutrient Aigua))
([I11257N1] of  Nutrient
    (Quantitat_nutrient 0.29)
    (Tipus_nutrient Minerals))
([I11257N2] of  Nutrient
    (Quantitat_nutrient 1.33)
    (Tipus_nutrient Proteines))
([I11257N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I11257N4] of  Nutrient
    (Quantitat_nutrient 0.9)
    (Tipus_nutrient Fibra))
([I11257N5] of  Nutrient
    (Quantitat_nutrient 2.26)
    (Tipus_nutrient Hidrats_de_carboni))
([I11257N6] of  Nutrient
    (Quantitat_nutrient 0.22)
    (Tipus_nutrient Greixos))
([I11257N7] of  Nutrient
    (Quantitat_nutrient 0.48)
    (Tipus_nutrient Sucre))


([I11625] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Parsley")
    (Nutrients [I11625N0] [I11625N1] [I11625N2] [I11625N3] [I11625N4] [I11625N5] [I11625N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 271))

([I11625N0] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Aigua))
([I11625N1] of  Nutrient
    (Quantitat_nutrient 7.85)
    (Tipus_nutrient Minerals))
([I11625N2] of  Nutrient
    (Quantitat_nutrient 31.3)
    (Tipus_nutrient Proteines))
([I11625N3] of  Nutrient
    (Quantitat_nutrient 0.22)
    (Tipus_nutrient Vitamines))
([I11625N4] of  Nutrient
    (Quantitat_nutrient 32.7)
    (Tipus_nutrient Fibra))
([I11625N5] of  Nutrient
    (Quantitat_nutrient 42.38)
    (Tipus_nutrient Hidrats_de_carboni))
([I11625N6] of  Nutrient
    (Quantitat_nutrient 5.2)
    (Tipus_nutrient Greixos))


([I11703] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Artichokes")
    (Nutrients [I11703N0] [I11703N1] [I11703N2] [I11703N3] [I11703N4] [I11703N5] [I11703N6] [I11703N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 45))

([I11703N0] of  Nutrient
    (Quantitat_nutrient 86.5)
    (Tipus_nutrient Aigua))
([I11703N1] of  Nutrient
    (Quantitat_nutrient 0.67)
    (Tipus_nutrient Minerals))
([I11703N2] of  Nutrient
    (Quantitat_nutrient 3.11)
    (Tipus_nutrient Proteines))
([I11703N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I11703N4] of  Nutrient
    (Quantitat_nutrient 4.6)
    (Tipus_nutrient Fibra))
([I11703N5] of  Nutrient
    (Quantitat_nutrient 9.18)
    (Tipus_nutrient Hidrats_de_carboni))
([I11703N6] of  Nutrient
    (Quantitat_nutrient 0.5)
    (Tipus_nutrient Greixos))
([I11703N7] of  Nutrient
    (Quantitat_nutrient 0.84)
    (Tipus_nutrient Sucre))


([I11709] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Asparagus")
    (Nutrients [I11709N0] [I11709N1] [I11709N2] [I11709N3] [I11709N4] [I11709N5] [I11709N6] [I11709N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 18))

([I11709N0] of  Nutrient
    (Quantitat_nutrient 94.1)
    (Tipus_nutrient Aigua))
([I11709N1] of  Nutrient
    (Quantitat_nutrient 0.49)
    (Tipus_nutrient Minerals))
([I11709N2] of  Nutrient
    (Quantitat_nutrient 2.95)
    (Tipus_nutrient Proteines))
([I11709N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I11709N4] of  Nutrient
    (Quantitat_nutrient 1.6)
    (Tipus_nutrient Fibra))
([I11709N5] of  Nutrient
    (Quantitat_nutrient 1.92)
    (Tipus_nutrient Hidrats_de_carboni))
([I11709N6] of  Nutrient
    (Quantitat_nutrient 0.42)
    (Tipus_nutrient Greixos))
([I11709N7] of  Nutrient
    (Quantitat_nutrient 0.32)
    (Tipus_nutrient Sucre))


([I11765] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Chard")
    (Nutrients [I11765N0] [I11765N1] [I11765N2] [I11765N3] [I11765N4] [I11765N5] [I11765N6] [I11765N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 20))

([I11765N0] of  Nutrient
    (Quantitat_nutrient 92.65)
    (Tipus_nutrient Aigua))
([I11765N1] of  Nutrient
    (Quantitat_nutrient 1.14)
    (Tipus_nutrient Minerals))
([I11765N2] of  Nutrient
    (Quantitat_nutrient 1.88)
    (Tipus_nutrient Proteines))
([I11765N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I11765N4] of  Nutrient
    (Quantitat_nutrient 2.1)
    (Tipus_nutrient Fibra))
([I11765N5] of  Nutrient
    (Quantitat_nutrient 4.13)
    (Tipus_nutrient Hidrats_de_carboni))
([I11765N6] of  Nutrient
    (Quantitat_nutrient 0.08)
    (Tipus_nutrient Greixos))
([I11765N7] of  Nutrient
    (Quantitat_nutrient 1.1)
    (Tipus_nutrient Sucre))


([I11795] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Leeks")
    (Nutrients [I11795N0] [I11795N1] [I11795N2] [I11795N3] [I11795N4] [I11795N5] [I11795N6] [I11795N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 31))

([I11795N0] of  Nutrient
    (Quantitat_nutrient 90.8)
    (Tipus_nutrient Aigua))
([I11795N1] of  Nutrient
    (Quantitat_nutrient 0.4)
    (Tipus_nutrient Minerals))
([I11795N2] of  Nutrient
    (Quantitat_nutrient 0.81)
    (Tipus_nutrient Proteines))
([I11795N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I11795N4] of  Nutrient
    (Quantitat_nutrient 1.0)
    (Tipus_nutrient Fibra))
([I11795N5] of  Nutrient
    (Quantitat_nutrient 7.62)
    (Tipus_nutrient Hidrats_de_carboni))
([I11795N6] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Greixos))
([I11795N7] of  Nutrient
    (Quantitat_nutrient 2.11)
    (Tipus_nutrient Sucre))


([I11801] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Mustard")
    (Nutrients [I11801N0] [I11801N1] [I11801N2] [I11801N3] [I11801N4] [I11801N5] [I11801N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 16))

([I11801N0] of  Nutrient
    (Quantitat_nutrient 94.5)
    (Tipus_nutrient Aigua))
([I11801N1] of  Nutrient
    (Quantitat_nutrient 0.72)
    (Tipus_nutrient Minerals))
([I11801N2] of  Nutrient
    (Quantitat_nutrient 1.7)
    (Tipus_nutrient Proteines))
([I11801N3] of  Nutrient
    (Quantitat_nutrient 0.07)
    (Tipus_nutrient Vitamines))
([I11801N4] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Fibra))
([I11801N5] of  Nutrient
    (Quantitat_nutrient 2.8)
    (Tipus_nutrient Hidrats_de_carboni))
([I11801N6] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Greixos))


([I11807] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Onions")
    (Nutrients [I11807N0] [I11807N1] [I11807N2] [I11807N3] [I11807N4] [I11807N5] [I11807N6] [I11807N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 26))

([I11807N0] of  Nutrient
    (Quantitat_nutrient 92.24)
    (Tipus_nutrient Aigua))
([I11807N1] of  Nutrient
    (Quantitat_nutrient 0.38)
    (Tipus_nutrient Minerals))
([I11807N2] of  Nutrient
    (Quantitat_nutrient 0.71)
    (Tipus_nutrient Proteines))
([I11807N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I11807N4] of  Nutrient
    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Fibra))
([I11807N5] of  Nutrient
    (Quantitat_nutrient 6.11)
    (Tipus_nutrient Hidrats_de_carboni))
([I11807N6] of  Nutrient
    (Quantitat_nutrient 0.05)
    (Tipus_nutrient Greixos))
([I11807N7] of  Nutrient
    (Quantitat_nutrient 2.9)
    (Tipus_nutrient Sucre))


([I11848] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Pumpkin")
    (Nutrients [I11848N0] [I11848N1] [I11848N2] [I11848N3] [I11848N4] [I11848N5] [I11848N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 21))

([I11848N0] of  Nutrient
    (Quantitat_nutrient 92.51)
    (Tipus_nutrient Aigua))
([I11848N1] of  Nutrient
    (Quantitat_nutrient 0.85)
    (Tipus_nutrient Minerals))
([I11848N2] of  Nutrient
    (Quantitat_nutrient 2.72)
    (Tipus_nutrient Proteines))
([I11848N3] of  Nutrient
    (Quantitat_nutrient 2.7)
    (Tipus_nutrient Fibra))
([I11848N4] of  Nutrient
    (Quantitat_nutrient 3.39)
    (Tipus_nutrient Hidrats_de_carboni))
([I11848N5] of  Nutrient
    (Quantitat_nutrient 0.22)
    (Tipus_nutrient Greixos))
([I11848N6] of  Nutrient
    (Quantitat_nutrient 0.69)
    (Tipus_nutrient Sucre))


([I11856] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Spinach")
    (Nutrients [I11856N0] [I11856N1] [I11856N2] [I11856N3] [I11856N4] [I11856N5] [I11856N6] [I11856N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 34))

([I11856N0] of  Nutrient
    (Quantitat_nutrient 88.94)
    (Tipus_nutrient Aigua))
([I11856N1] of  Nutrient
    (Quantitat_nutrient 0.91)
    (Tipus_nutrient Minerals))
([I11856N2] of  Nutrient
    (Quantitat_nutrient 4.01)
    (Tipus_nutrient Proteines))
([I11856N3] of  Nutrient
    (Quantitat_nutrient 0.02)
    (Tipus_nutrient Vitamines))
([I11856N4] of  Nutrient
    (Quantitat_nutrient 3.7)
    (Tipus_nutrient Fibra))
([I11856N5] of  Nutrient
    (Quantitat_nutrient 4.8)
    (Tipus_nutrient Hidrats_de_carboni))
([I11856N6] of  Nutrient
    (Quantitat_nutrient 0.87)
    (Tipus_nutrient Greixos))
([I11856N7] of  Nutrient
    (Quantitat_nutrient 0.51)
    (Tipus_nutrient Sucre))


([I11890] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Turnips")
    (Nutrients [I11890N0] [I11890N1] [I11890N2] [I11890N3] [I11890N4] [I11890N5] [I11890N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 21))

([I11890N0] of  Nutrient
    (Quantitat_nutrient 93.6)
    (Tipus_nutrient Aigua))
([I11890N1] of  Nutrient
    (Quantitat_nutrient 0.53)
    (Tipus_nutrient Minerals))
([I11890N2] of  Nutrient
    (Quantitat_nutrient 1.53)
    (Tipus_nutrient Proteines))
([I11890N3] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Fibra))
([I11890N4] of  Nutrient
    (Quantitat_nutrient 3.73)
    (Tipus_nutrient Hidrats_de_carboni))
([I11890N5] of  Nutrient
    (Quantitat_nutrient 0.24)
    (Tipus_nutrient Greixos))
([I11890N6] of  Nutrient
    (Quantitat_nutrient 1.73)
    (Tipus_nutrient Sucre))


([I11956] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Tomatoes")
    (Nutrients [I11956N0] [I11956N1] [I11956N2] [I11956N3] [I11956N4] [I11956N5] [I11956N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 213))

([I11956N0] of  Nutrient
    (Quantitat_nutrient 53.83)
    (Tipus_nutrient Aigua))
([I11956N1] of  Nutrient
    (Quantitat_nutrient 2.1)
    (Tipus_nutrient Minerals))
([I11956N2] of  Nutrient
    (Quantitat_nutrient 5.06)
    (Tipus_nutrient Proteines))
([I11956N3] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Vitamines))
([I11956N4] of  Nutrient
    (Quantitat_nutrient 5.8)
    (Tipus_nutrient Fibra))
([I11956N5] of  Nutrient
    (Quantitat_nutrient 23.33)
    (Tipus_nutrient Hidrats_de_carboni))
([I11956N6] of  Nutrient
    (Quantitat_nutrient 11.08)
    (Tipus_nutrient Greixos))


([I11960] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Carrots")
    (Nutrients [I11960N0] [I11960N1] [I11960N2] [I11960N3] [I11960N4] [I11960N5] [I11960N6] [I11960N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 35))

([I11960N0] of  Nutrient
    (Quantitat_nutrient 90.35)
    (Tipus_nutrient Aigua))
([I11960N1] of  Nutrient
    (Quantitat_nutrient 0.39)
    (Tipus_nutrient Minerals))
([I11960N2] of  Nutrient
    (Quantitat_nutrient 0.64)
    (Tipus_nutrient Proteines))
([I11960N3] of  Nutrient
    (Quantitat_nutrient 0.02)
    (Tipus_nutrient Vitamines))
([I11960N4] of  Nutrient
    (Quantitat_nutrient 2.9)
    (Tipus_nutrient Fibra))
([I11960N5] of  Nutrient
    (Quantitat_nutrient 8.24)
    (Tipus_nutrient Hidrats_de_carboni))
([I11960N6] of  Nutrient
    (Quantitat_nutrient 0.13)
    (Tipus_nutrient Greixos))
([I11960N7] of  Nutrient
    (Quantitat_nutrient 4.76)
    (Tipus_nutrient Sucre))


([I11968] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Cauliflower")
    (Nutrients [I11968N0] [I11968N1] [I11968N2] [I11968N3] [I11968N4] [I11968N5] [I11968N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 32))

([I11968N0] of  Nutrient
    (Quantitat_nutrient 89.47)
    (Tipus_nutrient Aigua))
([I11968N1] of  Nutrient
    (Quantitat_nutrient 0.65)
    (Tipus_nutrient Minerals))
([I11968N2] of  Nutrient
    (Quantitat_nutrient 3.04)
    (Tipus_nutrient Proteines))
([I11968N3] of  Nutrient
    (Quantitat_nutrient 0.07)
    (Tipus_nutrient Vitamines))
([I11968N4] of  Nutrient
    (Quantitat_nutrient 3.3)
    (Tipus_nutrient Fibra))
([I11968N5] of  Nutrient
    (Quantitat_nutrient 6.28)
    (Tipus_nutrient Hidrats_de_carboni))
([I11968N6] of  Nutrient
    (Quantitat_nutrient 0.31)
    (Tipus_nutrient Greixos))


([I11994] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Broccoli")
    (Nutrients [I11994N0] [I11994N1] [I11994N2] [I11994N3] [I11994N4] [I11994N5] [I11994N6] [I11994N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 30))

([I11994N0] of  Nutrient
    (Quantitat_nutrient 92.55)
    (Tipus_nutrient Aigua))
([I11994N1] of  Nutrient
    (Quantitat_nutrient 0.45)
    (Tipus_nutrient Minerals))
([I11994N2] of  Nutrient
    (Quantitat_nutrient 1.2)
    (Tipus_nutrient Proteines))
([I11994N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I11994N4] of  Nutrient
    (Quantitat_nutrient 4.6)
    (Tipus_nutrient Fibra))
([I11994N5] of  Nutrient
    (Quantitat_nutrient 4.67)
    (Tipus_nutrient Hidrats_de_carboni))
([I11994N6] of  Nutrient
    (Quantitat_nutrient 0.76)
    (Tipus_nutrient Greixos))
([I11994N7] of  Nutrient
    (Quantitat_nutrient 0.88)
    (Tipus_nutrient Sucre))


([I11998] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Mushrooms")
    (Nutrients [I11998N0] [I11998N1] [I11998N2] [I11998N3] [I11998N4] [I11998N5] [I11998N6] [I11998N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 22))

([I11998N0] of  Nutrient
    (Quantitat_nutrient 92.82)
    (Tipus_nutrient Aigua))
([I11998N1] of  Nutrient
    (Quantitat_nutrient 0.5)
    (Tipus_nutrient Minerals))
([I11998N2] of  Nutrient
    (Quantitat_nutrient 2.11)
    (Tipus_nutrient Proteines))
([I11998N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I11998N4] of  Nutrient
    (Quantitat_nutrient 1.3)
    (Tipus_nutrient Fibra))
([I11998N5] of  Nutrient
    (Quantitat_nutrient 3.87)
    (Tipus_nutrient Hidrats_de_carboni))
([I11998N6] of  Nutrient
    (Quantitat_nutrient 0.35)
    (Tipus_nutrient Greixos))
([I11998N7] of  Nutrient
    (Quantitat_nutrient 2.5)
    (Tipus_nutrient Sucre))


([I12738] of InfoIngredient
    (Familia Nut)
    (Nom_ingredient "Nuts")
    (Nutrients [I12738N0] [I12738N1] [I12738N2] [I12738N3] [I12738N4] [I12738N5] [I12738N6] [I12738N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 607))

([I12738N0] of  Nutrient
    (Quantitat_nutrient 3.15)
    (Tipus_nutrient Aigua))
([I12738N1] of  Nutrient
    (Quantitat_nutrient 1.71)
    (Tipus_nutrient Minerals))
([I12738N2] of  Nutrient
    (Quantitat_nutrient 17.86)
    (Tipus_nutrient Proteines))
([I12738N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I12738N4] of  Nutrient
    (Quantitat_nutrient 7.1)
    (Tipus_nutrient Fibra))
([I12738N5] of  Nutrient
    (Quantitat_nutrient 25.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I12738N6] of  Nutrient
    (Quantitat_nutrient 30.0)
    (Tipus_nutrient Greixos))
([I12738N7] of  Nutrient
    (Quantitat_nutrient 5.21)
    (Tipus_nutrient Sucre))


([I15117] of InfoIngredient
    (Familia Fish)
    (Nom_ingredient "Fish-tuna")
    (Nutrients [I15117N0] [I15117N1] [I15117N2] [I15117N3] [I15117N4] [I15117N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 144))

([I15117N0] of  Nutrient
    (Quantitat_nutrient 68.09)
    (Tipus_nutrient Aigua))
([I15117N1] of  Nutrient
    (Quantitat_nutrient 0.6)
    (Tipus_nutrient Minerals))
([I15117N2] of  Nutrient
    (Quantitat_nutrient 23.33)
    (Tipus_nutrient Proteines))
([I15117N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I15117N4] of  Nutrient
    (Quantitat_nutrient 4.9)
    (Tipus_nutrient Greixos))
([I15117N5] of  Nutrient
    (Quantitat_nutrient 0.04)
    (Tipus_nutrient Colesterol))


([I16107] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Sausage")
    (Nutrients [I16107N0] [I16107N1] [I16107N2] [I16107N3] [I16107N4] [I16107N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 255))

([I16107N0] of  Nutrient
    (Quantitat_nutrient 50.4)
    (Tipus_nutrient Aigua))
([I16107N1] of  Nutrient
    (Quantitat_nutrient 1.45)
    (Tipus_nutrient Minerals))
([I16107N2] of  Nutrient
    (Quantitat_nutrient 20.28)
    (Tipus_nutrient Proteines))
([I16107N3] of  Nutrient
    (Quantitat_nutrient 2.8)
    (Tipus_nutrient Fibra))
([I16107N4] of  Nutrient
    (Quantitat_nutrient 8.09)
    (Tipus_nutrient Hidrats_de_carboni))
([I16107N5] of  Nutrient
    (Quantitat_nutrient 15.16)
    (Tipus_nutrient Greixos))


([I16370] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Lentils")
    (Nutrients [I16370N0] [I16370N1] [I16370N2] [I16370N3] [I16370N4] [I16370N5] [I16370N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 114))

([I16370N0] of  Nutrient
    (Quantitat_nutrient 69.64)
    (Tipus_nutrient Aigua))
([I16370N1] of  Nutrient
    (Quantitat_nutrient 0.85)
    (Tipus_nutrient Minerals))
([I16370N2] of  Nutrient
    (Quantitat_nutrient 9.02)
    (Tipus_nutrient Proteines))
([I16370N3] of  Nutrient
    (Quantitat_nutrient 7.9)
    (Tipus_nutrient Fibra))
([I16370N4] of  Nutrient
    (Quantitat_nutrient 19.54)
    (Tipus_nutrient Hidrats_de_carboni))
([I16370N5] of  Nutrient
    (Quantitat_nutrient 0.38)
    (Tipus_nutrient Greixos))
([I16370N6] of  Nutrient
    (Quantitat_nutrient 1.8)
    (Tipus_nutrient Sucre))


([I16386] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Peas")
    (Nutrients [I16386N0] [I16386N1] [I16386N2] [I16386N3] [I16386N4] [I16386N5] [I16386N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 116))

([I16386N0] of  Nutrient
    (Quantitat_nutrient 69.49)
    (Tipus_nutrient Aigua))
([I16386N1] of  Nutrient
    (Quantitat_nutrient 0.75)
    (Tipus_nutrient Minerals))
([I16386N2] of  Nutrient
    (Quantitat_nutrient 8.34)
    (Tipus_nutrient Proteines))
([I16386N3] of  Nutrient
    (Quantitat_nutrient 10.3)
    (Tipus_nutrient Fibra))
([I16386N4] of  Nutrient
    (Quantitat_nutrient 20.51)
    (Tipus_nutrient Hidrats_de_carboni))
([I16386N5] of  Nutrient
    (Quantitat_nutrient 0.39)
    (Tipus_nutrient Greixos))
([I16386N6] of  Nutrient
    (Quantitat_nutrient 2.9)
    (Tipus_nutrient Sucre))


([I17438] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Veal")
    (Nutrients [I17438N0] [I17438N1] [I17438N2] [I17438N3] [I17438N4] [I17438N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 199))

([I17438N0] of  Nutrient
    (Quantitat_nutrient 62.96)
    (Tipus_nutrient Aigua))
([I17438N1] of  Nutrient
    (Quantitat_nutrient 0.65)
    (Tipus_nutrient Minerals))
([I17438N2] of  Nutrient
    (Quantitat_nutrient 25.72)
    (Tipus_nutrient Proteines))
([I17438N3] of  Nutrient
    (Quantitat_nutrient 0.15)
    (Tipus_nutrient Hidrats_de_carboni))
([I17438N4] of  Nutrient
    (Quantitat_nutrient 8.57)
    (Tipus_nutrient Greixos))
([I17438N5] of  Nutrient
    (Quantitat_nutrient 0.08)
    (Tipus_nutrient Colesterol))


([I17464] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Lamb")
    (Nutrients [I17464N0] [I17464N1] [I17464N2] [I17464N3] [I17464N4])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 276))

([I17464N0] of  Nutrient
    (Quantitat_nutrient 51.74)
    (Tipus_nutrient Aigua))
([I17464N1] of  Nutrient
    (Quantitat_nutrient 0.61)
    (Tipus_nutrient Minerals))
([I17464N2] of  Nutrient
    (Quantitat_nutrient 30.9)
    (Tipus_nutrient Proteines))
([I17464N3] of  Nutrient
    (Quantitat_nutrient 13.96)
    (Tipus_nutrient Greixos))
([I17464N4] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Colesterol))


([I18241] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Croissants")
    (Nutrients [I18241N0] [I18241N1] [I18241N2] [I18241N3] [I18241N4] [I18241N5] [I18241N6] [I18241N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 414))

([I18241N0] of  Nutrient
    (Quantitat_nutrient 21.0)
    (Tipus_nutrient Aigua))
([I18241N1] of  Nutrient
    (Quantitat_nutrient 0.7)
    (Tipus_nutrient Minerals))
([I18241N2] of  Nutrient
    (Quantitat_nutrient 9.2)
    (Tipus_nutrient Proteines))
([I18241N3] of  Nutrient
    (Quantitat_nutrient 2.6)
    (Tipus_nutrient Fibra))
([I18241N4] of  Nutrient
    (Quantitat_nutrient 47.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I18241N5] of  Nutrient
    (Quantitat_nutrient 15.9)
    (Tipus_nutrient Greixos))
([I18241N6] of  Nutrient
    (Quantitat_nutrient 0.06)
    (Tipus_nutrient Colesterol))
([I18241N7] of  Nutrient
    (Quantitat_nutrient 11.35)
    (Tipus_nutrient Sucre))


([I18417] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Coffeecake")
    (Nutrients [I18417N0] [I18417N1] [I18417N2] [I18417N3] [I18417N4] [I18417N5] [I18417N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 418))

([I18417N0] of  Nutrient
    (Quantitat_nutrient 21.9)
    (Tipus_nutrient Aigua))
([I18417N1] of  Nutrient
    (Quantitat_nutrient 0.66)
    (Tipus_nutrient Minerals))
([I18417N2] of  Nutrient
    (Quantitat_nutrient 6.8)
    (Tipus_nutrient Proteines))
([I18417N3] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Fibra))
([I18417N4] of  Nutrient
    (Quantitat_nutrient 46.7)
    (Tipus_nutrient Hidrats_de_carboni))
([I18417N5] of  Nutrient
    (Quantitat_nutrient 19.3)
    (Tipus_nutrient Greixos))
([I18417N6] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Colesterol))


([I18423] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Cookies")
    (Nutrients [I18423N0] [I18423N1] [I18423N2] [I18423N3] [I18423N4] [I18423N5] [I18423N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 363))

([I18423N0] of  Nutrient
    (Quantitat_nutrient 19.5)
    (Tipus_nutrient Aigua))
([I18423N1] of  Nutrient
    (Quantitat_nutrient 0.5)
    (Tipus_nutrient Minerals))
([I18423N2] of  Nutrient
    (Quantitat_nutrient 10.6)
    (Tipus_nutrient Proteines))
([I18423N3] of  Nutrient
    (Quantitat_nutrient 1.0)
    (Tipus_nutrient Fibra))
([I18423N4] of  Nutrient
    (Quantitat_nutrient 59.7)
    (Tipus_nutrient Hidrats_de_carboni))
([I18423N5] of  Nutrient
    (Quantitat_nutrient 9.1)
    (Tipus_nutrient Greixos))
([I18423N6] of  Nutrient
    (Quantitat_nutrient 0.22)
    (Tipus_nutrient Colesterol))


([I18963] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Garlic")
    (Nutrients [I18963N0] [I18963N1] [I18963N2] [I18963N3] [I18963N4] [I18963N5] [I18963N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 350))

([I18963N0] of  Nutrient
    (Quantitat_nutrient 31.78)
    (Tipus_nutrient Aigua))
([I18963N1] of  Nutrient
    (Quantitat_nutrient 0.79)
    (Tipus_nutrient Minerals))
([I18963N2] of  Nutrient
    (Quantitat_nutrient 8.36)
    (Tipus_nutrient Proteines))
([I18963N3] of  Nutrient
    (Quantitat_nutrient 2.5)
    (Tipus_nutrient Fibra))
([I18963N4] of  Nutrient
    (Quantitat_nutrient 41.72)
    (Tipus_nutrient Hidrats_de_carboni))
([I18963N5] of  Nutrient
    (Quantitat_nutrient 14.61)
    (Tipus_nutrient Greixos))
([I18963N6] of  Nutrient
    (Quantitat_nutrient 3.69)
    (Tipus_nutrient Sucre))


([I18964] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Cinnamon")
    (Nutrients [I18964N0] [I18964N1] [I18964N2] [I18964N3] [I18964N4] [I18964N5] [I18964N6] [I18964N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 452))

([I18964N0] of  Nutrient
    (Quantitat_nutrient 18.98)
    (Tipus_nutrient Aigua))
([I18964N1] of  Nutrient
    (Quantitat_nutrient 0.74)
    (Tipus_nutrient Minerals))
([I18964N2] of  Nutrient
    (Quantitat_nutrient 4.45)
    (Tipus_nutrient Proteines))
([I18964N3] of  Nutrient
    (Quantitat_nutrient 1.2)
    (Tipus_nutrient Fibra))
([I18964N4] of  Nutrient
    (Quantitat_nutrient 48.6)
    (Tipus_nutrient Hidrats_de_carboni))
([I18964N5] of  Nutrient
    (Quantitat_nutrient 22.61)
    (Tipus_nutrient Greixos))
([I18964N6] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Colesterol))
([I18964N7] of  Nutrient
    (Quantitat_nutrient 21.7)
    (Tipus_nutrient Sucre))


([I18972] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "Bread")
    (Nutrients [I18972N0] [I18972N1] [I18972N2] [I18972N3] [I18972N4] [I18972N5] [I18972N6] [I18972N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 408))

([I18972N0] of  Nutrient
    (Quantitat_nutrient 21.13)
    (Tipus_nutrient Aigua))
([I18972N1] of  Nutrient
    (Quantitat_nutrient 1.06)
    (Tipus_nutrient Minerals))
([I18972N2] of  Nutrient
    (Quantitat_nutrient 10.42)
    (Tipus_nutrient Proteines))
([I18972N3] of  Nutrient
    (Quantitat_nutrient 2.1)
    (Tipus_nutrient Fibra))
([I18972N4] of  Nutrient
    (Quantitat_nutrient 44.83)
    (Tipus_nutrient Hidrats_de_carboni))
([I18972N5] of  Nutrient
    (Quantitat_nutrient 17.83)
    (Tipus_nutrient Greixos))
([I18972N6] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Colesterol))
([I18972N7] of  Nutrient
    (Quantitat_nutrient 2.08)
    (Tipus_nutrient Sucre))


([I18999] of InfoIngredient
    (Familia Baked)
    (Nom_ingredient "KELLOGG'S")
    (Nutrients [I18999N0] [I18999N1] [I18999N2] [I18999N3] [I18999N4] [I18999N5] [I18999N6] [I18999N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 293))

([I18999N0] of  Nutrient
    (Quantitat_nutrient 35.29)
    (Tipus_nutrient Aigua))
([I18999N1] of  Nutrient
    (Quantitat_nutrient 1.23)
    (Tipus_nutrient Minerals))
([I18999N2] of  Nutrient
    (Quantitat_nutrient 5.0)
    (Tipus_nutrient Proteines))
([I18999N3] of  Nutrient
    (Quantitat_nutrient 1.0)
    (Tipus_nutrient Fibra))
([I18999N4] of  Nutrient
    (Quantitat_nutrient 45.8)
    (Tipus_nutrient Hidrats_de_carboni))
([I18999N5] of  Nutrient
    (Quantitat_nutrient 6.2)
    (Tipus_nutrient Greixos))
([I18999N6] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Colesterol))
([I18999N7] of  Nutrient
    (Quantitat_nutrient 10.1)
    (Tipus_nutrient Sucre))


([I19904] of InfoIngredient
    (Familia Sweets)
    (Nom_ingredient "Chocolate")
    (Nutrients [I19904N0] [I19904N1] [I19904N2] [I19904N3] [I19904N4] [I19904N5] [I19904N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 598))

([I19904N0] of  Nutrient
    (Quantitat_nutrient 1.37)
    (Tipus_nutrient Aigua))
([I19904N1] of  Nutrient
    (Quantitat_nutrient 1.36)
    (Tipus_nutrient Minerals))
([I19904N2] of  Nutrient
    (Quantitat_nutrient 7.79)
    (Tipus_nutrient Proteines))
([I19904N3] of  Nutrient
    (Quantitat_nutrient 10.9)
    (Tipus_nutrient Fibra))
([I19904N4] of  Nutrient
    (Quantitat_nutrient 45.9)
    (Tipus_nutrient Hidrats_de_carboni))
([I19904N5] of  Nutrient
    (Quantitat_nutrient 32.63)
    (Tipus_nutrient Greixos))
([I19904N6] of  Nutrient
    (Quantitat_nutrient 18.99)
    (Tipus_nutrient Sucre))


([I19908] of InfoIngredient
    (Familia Sweets)
    (Nom_ingredient "Sugar")
    (Nutrients [I19908N0] [I19908N1] [I19908N2] [I19908N3])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 399))

([I19908N0] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Aigua))
([I19908N1] of  Nutrient
    (Quantitat_nutrient 0.05)
    (Tipus_nutrient Minerals))
([I19908N2] of  Nutrient
    (Quantitat_nutrient 99.8)
    (Tipus_nutrient Hidrats_de_carboni))
([I19908N3] of  Nutrient
    (Quantitat_nutrient 99.19)
    (Tipus_nutrient Sucre))


([I20080] of InfoIngredient
    (Familia Pasta)
    (Nom_ingredient "Wheat-flour")
    (Nutrients [I20080N0] [I20080N1] [I20080N2] [I20080N3] [I20080N4] [I20080N5] [I20080N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 340))

([I20080N0] of  Nutrient
    (Quantitat_nutrient 10.74)
    (Tipus_nutrient Aigua))
([I20080N1] of  Nutrient
    (Quantitat_nutrient 0.9)
    (Tipus_nutrient Minerals))
([I20080N2] of  Nutrient
    (Quantitat_nutrient 13.21)
    (Tipus_nutrient Proteines))
([I20080N3] of  Nutrient
    (Quantitat_nutrient 10.7)
    (Tipus_nutrient Fibra))
([I20080N4] of  Nutrient
    (Quantitat_nutrient 71.97)
    (Tipus_nutrient Hidrats_de_carboni))
([I20080N5] of  Nutrient
    (Quantitat_nutrient 2.5)
    (Tipus_nutrient Greixos))
([I20080N6] of  Nutrient
    (Quantitat_nutrient 0.41)
    (Tipus_nutrient Sucre))


([I20521] of InfoIngredient
    (Familia Pasta)
    (Nom_ingredient "Pasta")
    (Nutrients [I20521N0] [I20521N1] [I20521N2] [I20521N3] [I20521N4] [I20521N5] [I20521N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 157))

([I20521N0] of  Nutrient
    (Quantitat_nutrient 62.13)
    (Tipus_nutrient Aigua))
([I20521N1] of  Nutrient
    (Quantitat_nutrient 0.26)
    (Tipus_nutrient Minerals))
([I20521N2] of  Nutrient
    (Quantitat_nutrient 5.8)
    (Tipus_nutrient Proteines))
([I20521N3] of  Nutrient
    (Quantitat_nutrient 1.8)
    (Tipus_nutrient Fibra))
([I20521N4] of  Nutrient
    (Quantitat_nutrient 30.59)
    (Tipus_nutrient Hidrats_de_carboni))
([I20521N5] of  Nutrient
    (Quantitat_nutrient 0.93)
    (Tipus_nutrient Greixos))
([I20521N6] of  Nutrient
    (Quantitat_nutrient 0.56)
    (Tipus_nutrient Sucre))


([I31034] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Peppers")
    (Nutrients [I31034N0] [I31034N1] [I31034N2] [I31034N3] [I31034N4] [I31034N5] [I31034N6] [I31034N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 22))

([I31034N0] of  Nutrient
    (Quantitat_nutrient 90.2)
    (Tipus_nutrient Aigua))
([I31034N1] of  Nutrient
    (Quantitat_nutrient 1.62)
    (Tipus_nutrient Minerals))
([I31034N2] of  Nutrient
    (Quantitat_nutrient 0.8)
    (Tipus_nutrient Proteines))
([I31034N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I31034N4] of  Nutrient
    (Quantitat_nutrient 2.6)
    (Tipus_nutrient Fibra))
([I31034N5] of  Nutrient
    (Quantitat_nutrient 4.56)
    (Tipus_nutrient Hidrats_de_carboni))
([I31034N6] of  Nutrient
    (Quantitat_nutrient 0.4)
    (Tipus_nutrient Greixos))
([I31034N7] of  Nutrient
    (Quantitat_nutrient 1.6)
    (Tipus_nutrient Sucre))


([I42141] of InfoIngredient
    (Familia Dairy_Eggs)
    (Nom_ingredient "Cream")
    (Nutrients [I42141N0] [I42141N1] [I42141N2] [I42141N3] [I42141N4] [I42141N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 71))

([I42141N0] of  Nutrient
    (Quantitat_nutrient 86.2)
    (Tipus_nutrient Aigua))
([I42141N1] of  Nutrient
    (Quantitat_nutrient 0.31)
    (Tipus_nutrient Minerals))
([I42141N2] of  Nutrient
    (Quantitat_nutrient 0.8)
    (Tipus_nutrient Proteines))
([I42141N3] of  Nutrient
    (Quantitat_nutrient 9.1)
    (Tipus_nutrient Hidrats_de_carboni))
([I42141N4] of  Nutrient
    (Quantitat_nutrient 3.5)
    (Tipus_nutrient Greixos))
([I42141N5] of  Nutrient
    (Quantitat_nutrient 9.1)
    (Tipus_nutrient Sucre))


([I42204] of InfoIngredient
    (Familia Snacks)
    (Nom_ingredient "Rice")
    (Nutrients [I42204N0] [I42204N1] [I42204N2] [I42204N3] [I42204N4] [I42204N5] [I42204N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 392))

([I42204N0] of  Nutrient
    (Quantitat_nutrient 5.8)
    (Tipus_nutrient Aigua))
([I42204N1] of  Nutrient
    (Quantitat_nutrient 1.01)
    (Tipus_nutrient Minerals))
([I42204N2] of  Nutrient
    (Quantitat_nutrient 7.1)
    (Tipus_nutrient Proteines))
([I42204N3] of  Nutrient
    (Quantitat_nutrient 4.2)
    (Tipus_nutrient Fibra))
([I42204N4] of  Nutrient
    (Quantitat_nutrient 81.1)
    (Tipus_nutrient Hidrats_de_carboni))
([I42204N5] of  Nutrient
    (Quantitat_nutrient 4.3)
    (Tipus_nutrient Greixos))
([I42204N6] of  Nutrient
    (Quantitat_nutrient 0.88)
    (Tipus_nutrient Sucre))


([I43144] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Cabbage")
    (Nutrients [I43144N0] [I43144N1] [I43144N2] [I43144N3] [I43144N4] [I43144N5] [I43144N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 28))

([I43144N0] of  Nutrient
    (Quantitat_nutrient 92.1)
    (Tipus_nutrient Aigua))
([I43144N1] of  Nutrient
    (Quantitat_nutrient 1.07)
    (Tipus_nutrient Minerals))
([I43144N2] of  Nutrient
    (Quantitat_nutrient 1.1)
    (Tipus_nutrient Proteines))
([I43144N3] of  Nutrient
    (Quantitat_nutrient 3.1)
    (Tipus_nutrient Fibra))
([I43144N4] of  Nutrient
    (Quantitat_nutrient 5.63)
    (Tipus_nutrient Hidrats_de_carboni))
([I43144N5] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Greixos))
([I43144N6] of  Nutrient
    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Sucre))


([I43146] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Eggplant")
    (Nutrients [I43146N0] [I43146N1] [I43146N2] [I43146N3] [I43146N4] [I43146N5] [I43146N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 49))

([I43146N0] of  Nutrient
    (Quantitat_nutrient 86.9)
    (Tipus_nutrient Aigua))
([I43146N1] of  Nutrient
    (Quantitat_nutrient 1.73)
    (Tipus_nutrient Minerals))
([I43146N2] of  Nutrient
    (Quantitat_nutrient 0.9)
    (Tipus_nutrient Proteines))
([I43146N3] of  Nutrient
    (Quantitat_nutrient 2.5)
    (Tipus_nutrient Fibra))
([I43146N4] of  Nutrient
    (Quantitat_nutrient 9.77)
    (Tipus_nutrient Hidrats_de_carboni))
([I43146N5] of  Nutrient
    (Quantitat_nutrient 0.7)
    (Tipus_nutrient Greixos))
([I43146N6] of  Nutrient
    (Quantitat_nutrient 4.8)
    (Tipus_nutrient Sucre))


([I43212] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Bacon")
    (Nutrients [I43212N0] [I43212N1] [I43212N2] [I43212N3] [I43212N4] [I43212N5] [I43212N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 476))

([I43212N0] of  Nutrient
    (Quantitat_nutrient 8.0)
    (Tipus_nutrient Aigua))
([I43212N1] of  Nutrient
    (Quantitat_nutrient 2.33)
    (Tipus_nutrient Minerals))
([I43212N2] of  Nutrient
    (Quantitat_nutrient 32.0)
    (Tipus_nutrient Proteines))
([I43212N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I43212N4] of  Nutrient
    (Quantitat_nutrient 10.2)
    (Tipus_nutrient Fibra))
([I43212N5] of  Nutrient
    (Quantitat_nutrient 28.6)
    (Tipus_nutrient Hidrats_de_carboni))
([I43212N6] of  Nutrient
    (Quantitat_nutrient 25.9)
    (Tipus_nutrient Greixos))


([I43214] of InfoIngredient
    (Familia Fats_Oils)
    (Nom_ingredient "Butter")
    (Nutrients [I43214N0] [I43214N1] [I43214N2] [I43214N3] [I43214N4] [I43214N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 373))

([I43214N0] of  Nutrient
    (Quantitat_nutrient 5.0)
    (Tipus_nutrient Aigua))
([I43214N1] of  Nutrient
    (Quantitat_nutrient 1.23)
    (Tipus_nutrient Minerals))
([I43214N2] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Proteines))
([I43214N3] of  Nutrient
    (Quantitat_nutrient 89.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I43214N4] of  Nutrient
    (Quantitat_nutrient 1.0)
    (Tipus_nutrient Greixos))
([I43214N5] of  Nutrient
    (Quantitat_nutrient 5.3)
    (Tipus_nutrient Sucre))


([I43261] of InfoIngredient
    (Familia Dairy_Eggs)
    (Nom_ingredient "Yogurt")
    (Nutrients [I43261N0] [I43261N1] [I43261N2] [I43261N3] [I43261N4] [I43261N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 95))

([I43261N0] of  Nutrient
    (Quantitat_nutrient 75.4)
    (Tipus_nutrient Aigua))
([I43261N1] of  Nutrient
    (Quantitat_nutrient 0.54)
    (Tipus_nutrient Minerals))
([I43261N2] of  Nutrient
    (Quantitat_nutrient 4.4)
    (Tipus_nutrient Proteines))
([I43261N3] of  Nutrient
    (Quantitat_nutrient 19.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I43261N4] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Greixos))
([I43261N5] of  Nutrient
    (Quantitat_nutrient 14.0)
    (Tipus_nutrient Sucre))


([I43285] of InfoIngredient
    (Familia Dairy_Eggs)
    (Nom_ingredient "Eggs")
    (Nutrients [I43285N0] [I43285N1] [I43285N2] [I43285N3] [I43285N4] [I43285N5] [I43285N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 131))

([I43285N0] of  Nutrient
    (Quantitat_nutrient 72.7)
    (Tipus_nutrient Aigua))
([I43285N1] of  Nutrient
    (Quantitat_nutrient 0.37)
    (Tipus_nutrient Minerals))
([I43285N2] of  Nutrient
    (Quantitat_nutrient 13.1)
    (Tipus_nutrient Proteines))
([I43285N3] of  Nutrient
    (Quantitat_nutrient 7.5)
    (Tipus_nutrient Hidrats_de_carboni))
([I43285N4] of  Nutrient
    (Quantitat_nutrient 5.6)
    (Tipus_nutrient Greixos))
([I43285N5] of  Nutrient
    (Quantitat_nutrient 0.28)
    (Tipus_nutrient Colesterol))
([I43285N6] of  Nutrient
    (Quantitat_nutrient 7.5)
    (Tipus_nutrient Sucre))


([I43299] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Soybean")
    (Nutrients [I43299N0] [I43299N1] [I43299N2] [I43299N3] [I43299N4] [I43299N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 151))

([I43299N0] of  Nutrient
    (Quantitat_nutrient 70.9)
    (Tipus_nutrient Aigua))
([I43299N1] of  Nutrient
    (Quantitat_nutrient 0.87)
    (Tipus_nutrient Minerals))
([I43299N2] of  Nutrient
    (Quantitat_nutrient 12.5)
    (Tipus_nutrient Proteines))
([I43299N3] of  Nutrient
    (Quantitat_nutrient 6.9)
    (Tipus_nutrient Hidrats_de_carboni))
([I43299N4] of  Nutrient
    (Quantitat_nutrient 8.1)
    (Tipus_nutrient Greixos))
([I43299N5] of  Nutrient
    (Quantitat_nutrient 1.6)
    (Tipus_nutrient Sucre))


([I43311] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Potatoes")
    (Nutrients [I43311N0] [I43311N1] [I43311N2] [I43311N3] [I43311N4] [I43311N5] [I43311N6] [I43311N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 62))

([I43311N0] of  Nutrient
    (Quantitat_nutrient 84.3)
    (Tipus_nutrient Aigua))
([I43311N1] of  Nutrient
    (Quantitat_nutrient 0.28)
    (Tipus_nutrient Minerals))
([I43311N2] of  Nutrient
    (Quantitat_nutrient 1.4)
    (Tipus_nutrient Proteines))
([I43311N3] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I43311N4] of  Nutrient
    (Quantitat_nutrient 2.4)
    (Tipus_nutrient Fibra))
([I43311N5] of  Nutrient
    (Quantitat_nutrient 13.6)
    (Tipus_nutrient Hidrats_de_carboni))
([I43311N6] of  Nutrient
    (Quantitat_nutrient 0.2)
    (Tipus_nutrient Greixos))
([I43311N7] of  Nutrient
    (Quantitat_nutrient 0.59)
    (Tipus_nutrient Sucre))


([I43365] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Tomato")
    (Nutrients [I43365N0] [I43365N1] [I43365N2] [I43365N3] [I43365N4] [I43365N5] [I43365N6] [I43365N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 22))

([I43365N0] of  Nutrient
    (Quantitat_nutrient 93.5)
    (Tipus_nutrient Aigua))
([I43365N1] of  Nutrient
    (Quantitat_nutrient 0.29)
    (Tipus_nutrient Minerals))
([I43365N2] of  Nutrient
    (Quantitat_nutrient 0.6)
    (Tipus_nutrient Proteines))
([I43365N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I43365N4] of  Nutrient
    (Quantitat_nutrient 0.8)
    (Tipus_nutrient Fibra))
([I43365N5] of  Nutrient
    (Quantitat_nutrient 4.59)
    (Tipus_nutrient Hidrats_de_carboni))
([I43365N6] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Greixos))
([I43365N7] of  Nutrient
    (Quantitat_nutrient 3.28)
    (Tipus_nutrient Sucre))


([I43378] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Pork")
    (Nutrients [I43378N0] [I43378N1] [I43378N2] [I43378N3] [I43378N4] [I43378N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 541))

([I43378N0] of  Nutrient
    (Quantitat_nutrient 12.32)
    (Tipus_nutrient Aigua))
([I43378N1] of  Nutrient
    (Quantitat_nutrient 2.18)
    (Tipus_nutrient Minerals))
([I43378N2] of  Nutrient
    (Quantitat_nutrient 37.04)
    (Tipus_nutrient Proteines))
([I43378N3] of  Nutrient
    (Quantitat_nutrient 1.43)
    (Tipus_nutrient Hidrats_de_carboni))
([I43378N4] of  Nutrient
    (Quantitat_nutrient 41.78)
    (Tipus_nutrient Greixos))
([I43378N5] of  Nutrient
    (Quantitat_nutrient 0.11)
    (Tipus_nutrient Colesterol))


([I43384] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Beef")
    (Nutrients [I43384N0] [I43384N1] [I43384N2] [I43384N3] [I43384N4] [I43384N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 310))

([I43384N0] of  Nutrient
    (Quantitat_nutrient 54.8)
    (Tipus_nutrient Aigua))
([I43384N1] of  Nutrient
    (Quantitat_nutrient 0.94)
    (Tipus_nutrient Minerals))
([I43384N2] of  Nutrient
    (Quantitat_nutrient 11.7)
    (Tipus_nutrient Proteines))
([I43384N3] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Hidrats_de_carboni))
([I43384N4] of  Nutrient
    (Quantitat_nutrient 28.4)
    (Tipus_nutrient Greixos))
([I43384N5] of  Nutrient
    (Quantitat_nutrient 0.06)
    (Tipus_nutrient Colesterol))


([I43406] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Yeast")
    (Nutrients [I43406N0] [I43406N1] [I43406N2] [I43406N3] [I43406N4] [I43406N5] [I43406N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 185))

([I43406N0] of  Nutrient
    (Quantitat_nutrient 40.9)
    (Tipus_nutrient Aigua))
([I43406N1] of  Nutrient
    (Quantitat_nutrient 5.84)
    (Tipus_nutrient Minerals))
([I43406N2] of  Nutrient
    (Quantitat_nutrient 23.88)
    (Tipus_nutrient Proteines))
([I43406N3] of  Nutrient
    (Quantitat_nutrient 6.5)
    (Tipus_nutrient Fibra))
([I43406N4] of  Nutrient
    (Quantitat_nutrient 20.42)
    (Tipus_nutrient Hidrats_de_carboni))
([I43406N5] of  Nutrient
    (Quantitat_nutrient 0.9)
    (Tipus_nutrient Greixos))
([I43406N6] of  Nutrient
    (Quantitat_nutrient 1.6)
    (Tipus_nutrient Sucre))


([I43410] of InfoIngredient
    (Familia Meat)
    (Nom_ingredient "Chicken")
    (Nutrients [I43410N0] [I43410N1] [I43410N2] [I43410N3] [I43410N4] [I43410N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 234))

([I43410N0] of  Nutrient
    (Quantitat_nutrient 56.44)
    (Tipus_nutrient Aigua))
([I43410N1] of  Nutrient
    (Quantitat_nutrient 1.0)
    (Tipus_nutrient Minerals))
([I43410N2] of  Nutrient
    (Quantitat_nutrient 21.28)
    (Tipus_nutrient Proteines))
([I43410N3] of  Nutrient
    (Quantitat_nutrient 4.3)
    (Tipus_nutrient Fibra))
([I43410N4] of  Nutrient
    (Quantitat_nutrient 8.51)
    (Tipus_nutrient Hidrats_de_carboni))
([I43410N5] of  Nutrient
    (Quantitat_nutrient 12.77)
    (Tipus_nutrient Greixos))


([I43449] of InfoIngredient
    (Familia Legumes)
    (Nom_ingredient "Beans")
    (Nutrients [I43449N0] [I43449N1] [I43449N2] [I43449N3] [I43449N4] [I43449N5] [I43449N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 105))

([I43449N0] of  Nutrient
    (Quantitat_nutrient 72.6)
    (Tipus_nutrient Aigua))
([I43449N1] of  Nutrient
    (Quantitat_nutrient 0.48)
    (Tipus_nutrient Minerals))
([I43449N2] of  Nutrient
    (Quantitat_nutrient 4.8)
    (Tipus_nutrient Proteines))
([I43449N3] of  Nutrient
    (Quantitat_nutrient 8.5)
    (Tipus_nutrient Fibra))
([I43449N4] of  Nutrient
    (Quantitat_nutrient 20.49)
    (Tipus_nutrient Hidrats_de_carboni))
([I43449N5] of  Nutrient
    (Quantitat_nutrient 0.4)
    (Tipus_nutrient Greixos))
([I43449N6] of  Nutrient
    (Quantitat_nutrient 7.78)
    (Tipus_nutrient Sucre))


([I43543] of InfoIngredient
    (Familia Dairy_Eggs)
    (Nom_ingredient "Milk")
    (Nutrients [I43543N0] [I43543N1] [I43543N2] [I43543N3] [I43543N4] [I43543N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 46))

([I43543N0] of  Nutrient
    (Quantitat_nutrient 90.0)
    (Tipus_nutrient Aigua))
([I43543N1] of  Nutrient
    (Quantitat_nutrient 0.39)
    (Tipus_nutrient Minerals))
([I43543N2] of  Nutrient
    (Quantitat_nutrient 1.6)
    (Tipus_nutrient Proteines))
([I43543N3] of  Nutrient
    (Quantitat_nutrient 5.3)
    (Tipus_nutrient Hidrats_de_carboni))
([I43543N4] of  Nutrient
    (Quantitat_nutrient 2.0)
    (Tipus_nutrient Greixos))
([I43543N5] of  Nutrient
    (Quantitat_nutrient 5.3)
    (Tipus_nutrient Sucre))


([I43598] of InfoIngredient
    (Familia Fats_Oils)
    (Nom_ingredient "Mayonnaise")
    (Nutrients [I43598N0] [I43598N1] [I43598N2] [I43598N3] [I43598N4] [I43598N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 688))

([I43598N0] of  Nutrient
    (Quantitat_nutrient 21.7)
    (Tipus_nutrient Aigua))
([I43598N1] of  Nutrient
    (Quantitat_nutrient 0.53)
    (Tipus_nutrient Minerals))
([I43598N2] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I43598N3] of  Nutrient
    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Hidrats_de_carboni))
([I43598N4] of  Nutrient
    (Quantitat_nutrient 77.8)
    (Tipus_nutrient Greixos))
([I43598N5] of  Nutrient
    (Quantitat_nutrient 0.3)
    (Tipus_nutrient Sucre))


([I44005] of InfoIngredient
    (Familia Fats_Oils)
    (Nom_ingredient "Oil")
    (Nutrients [I44005N0] [I44005N1])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 884))

([I44005N0] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Vitamines))
([I44005N1] of  Nutrient
    (Quantitat_nutrient 100.0)
    (Tipus_nutrient Greixos))


([I44048] of InfoIngredient
    (Familia Dairy_Eggs)
    (Nom_ingredient "Cheese")
    (Nutrients [I44048N0] [I44048N1] [I44048N2] [I44048N3] [I44048N4] [I44048N5] [I44048N6])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 257))

([I44048N0] of  Nutrient
    (Quantitat_nutrient 55.5)
    (Tipus_nutrient Aigua))
([I44048N1] of  Nutrient
    (Quantitat_nutrient 2.68)
    (Tipus_nutrient Minerals))
([I44048N2] of  Nutrient
    (Quantitat_nutrient 4.08)
    (Tipus_nutrient Proteines))
([I44048N3] of  Nutrient
    (Quantitat_nutrient 16.18)
    (Tipus_nutrient Hidrats_de_carboni))
([I44048N4] of  Nutrient
    (Quantitat_nutrient 19.5)
    (Tipus_nutrient Greixos))
([I44048N5] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Colesterol))
([I44048N6] of  Nutrient
    (Quantitat_nutrient 8.21)
    (Tipus_nutrient Sucre))


([I44055] of InfoIngredient
    (Familia Vegetables)
    (Nom_ingredient "Celery")
    (Nutrients [I44055N0] [I44055N1] [I44055N2] [I44055N3] [I44055N4] [I44055N5] [I44055N6] [I44055N7])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 319))

([I44055N0] of  Nutrient
    (Quantitat_nutrient 9.0)
    (Tipus_nutrient Aigua))
([I44055N1] of  Nutrient
    (Quantitat_nutrient 7.02)
    (Tipus_nutrient Minerals))
([I44055N2] of  Nutrient
    (Quantitat_nutrient 11.3)
    (Tipus_nutrient Proteines))
([I44055N3] of  Nutrient
    (Quantitat_nutrient 0.09)
    (Tipus_nutrient Vitamines))
([I44055N4] of  Nutrient
    (Quantitat_nutrient 27.8)
    (Tipus_nutrient Fibra))
([I44055N5] of  Nutrient
    (Quantitat_nutrient 63.7)
    (Tipus_nutrient Hidrats_de_carboni))
([I44055N6] of  Nutrient
    (Quantitat_nutrient 2.1)
    (Tipus_nutrient Greixos))
([I44055N7] of  Nutrient
    (Quantitat_nutrient 35.9)
    (Tipus_nutrient Sucre))


([I83110] of InfoIngredient
    (Familia Fish)
    (Nom_ingredient "Fish")
    (Nutrients [I83110N0] [I83110N1] [I83110N2] [I83110N3] [I83110N4] [I83110N5])
    (Temporada Hivern Primavera Estiu Tardor)
    (Valor_energetic 305))

([I83110N0] of  Nutrient
    (Quantitat_nutrient 43.0)
    (Tipus_nutrient Aigua))
([I83110N1] of  Nutrient
    (Quantitat_nutrient 5.35)
    (Tipus_nutrient Minerals))
([I83110N2] of  Nutrient
    (Quantitat_nutrient 18.5)
    (Tipus_nutrient Proteines))
([I83110N3] of  Nutrient
    (Quantitat_nutrient 0.03)
    (Tipus_nutrient Vitamines))
([I83110N4] of  Nutrient
    (Quantitat_nutrient 25.1)
    (Tipus_nutrient Greixos))
([I83110N5] of  Nutrient
    (Quantitat_nutrient 0.1)
    (Tipus_nutrient Colesterol))


;----------------------------------------------------------------------------------------------


([P0] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP0_0] [IP0_1] [IP0_2] [IP0_3])
    (Nom "Rice to the cuban with fried egg")
    (Tipus_plat 2n))

([IP0_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 40.14))
([IP0_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I4002])
    (Quantitat 15.05))
([IP0_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9041])
    (Quantitat 150.54))
([IP0_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 72.26))


([P1] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP1_0] [IP1_1] [IP1_2] [IP1_3] [IP1_4] [IP1_5])
    (Nom "Rice with cod")
    (Tipus_plat 2n))

([IP1_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 112.5))
([IP1_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 67.5))
([IP1_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 112.5))
([IP1_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 22.5))
([IP1_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 81.0))
([IP1_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 22.5))


([P2] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP2_0] [IP2_1] [IP2_2] [IP2_3] [IP2_4] [IP2_5] [IP2_6])
    (Nom "Rice with lobster")
    (Tipus_plat 2n))

([IP2_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 72.67))
([IP2_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 127.17))
([IP2_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 27.25))
([IP2_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.82))
([IP2_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 32.7))
([IP2_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11998])
    (Quantitat 18.17))
([IP2_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 18.17))


([P3] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP3_0] [IP3_1] [IP3_2] [IP3_3] [IP3_4])
    (Nom "Rice with mushrooms")
    (Tipus_plat 2n))

([IP3_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 85.35))
([IP3_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 15.22))
([IP3_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 5.08))
([IP3_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11998])
    (Quantitat 71.12))
([IP3_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 13.54))


([P4] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP4_0] [IP4_1] [IP4_2] [IP4_3] [IP4_4] [IP4_5])
    (Nom "Rice three delights")
    (Tipus_plat 2n))

([IP4_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 157.95))
([IP4_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 26.32))
([IP4_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7977])
    (Quantitat 26.32))
([IP4_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 26.32))
([IP4_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 26.32))
([IP4_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 14.04))


([P5] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP5_0] [IP5_1] [IP5_2] [IP5_3] [IP5_4] [IP5_5] [IP5_6])
    (Nom "Seafood paella")
    (Tipus_plat 2n))

([IP5_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 236.0))
([IP5_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 78.67))
([IP5_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 7.87))
([IP5_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 39.33))
([IP5_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 39.33))
([IP5_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 19.67))
([IP5_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 4.33))


([P6] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP6_0] [IP6_1] [IP6_2] [IP6_3] [IP6_4] [IP6_5] [IP6_6] [IP6_7] [IP6_8])
    (Nom "Paella valenciana")
    (Tipus_plat 2n))

([IP6_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 68.67))
([IP6_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43410])
    (Quantitat 85.83))
([IP6_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43449])
    (Quantitat 34.33))
([IP6_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 30.9))
([IP6_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 25.75))
([IP6_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 17.17))
([IP6_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 34.33))
([IP6_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 4.86))
([IP6_8] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 3.43))


([P7] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP7_0] [IP7_1] [IP7_2] [IP7_3])
    (Nom "Rice with milk")
    (Tipus_plat Postres))

([IP7_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 54.33))
([IP7_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 217.33))
([IP7_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 43.47))
([IP7_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18964])
    (Quantitat 1.3))


([P8] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP8_0] [IP8_1] [IP8_2] [IP8_3] [IP8_4])
    (Nom "Spaghetti carbonara")
    (Tipus_plat 2n))

([IP8_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 191.0))
([IP8_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42141])
    (Quantitat 119.38))
([IP8_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43212])
    (Quantitat 71.62))
([IP8_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 35.81))
([IP8_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 35.81))


([P9] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP9_0] [IP9_1] [IP9_2] [IP9_3] [IP9_4])
    (Nom "Spaghetti al pesto")
    (Tipus_plat 2n))

([IP9_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 251.64))
([IP9_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 12.58))
([IP9_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 9.44))
([IP9_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 3.15))
([IP9_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 62.91))


([P10] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP10_0] [IP10_1] [IP10_2] [IP10_3] [IP10_4] [IP10_5])
    (Nom "Spaghetti with tomato")
    (Tipus_plat 2n))

([IP10_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 220.2))
([IP10_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 18.35))
([IP10_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 18.35))
([IP10_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43365])
    (Quantitat 91.75))
([IP10_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 7.34))
([IP10_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 11.01))


([P11] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP11_0] [IP11_1] [IP11_2] [IP11_3] [IP11_4] [IP11_5])
    (Nom "Macaroni with tomato")
    (Tipus_plat 2n))

([IP11_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 220.2))
([IP11_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 18.35))
([IP11_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 18.35))
([IP11_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43365])
    (Quantitat 91.75))
([IP11_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 7.34))
([IP11_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 11.01))


([P12] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP12_0] [IP12_1] [IP12_2] [IP12_3] [IP12_4])
    (Nom "Raviolis with tomato")
    (Tipus_plat 2n))

([IP12_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 98.5))
([IP12_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43365])
    (Quantitat 61.56))
([IP12_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 24.62))
([IP12_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.23))
([IP12_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 9.85))


([P13] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP13_0] [IP13_1] [IP13_2] [IP13_3] [IP13_4] [IP13_5] [IP13_6])
    (Nom "Noodle with vegetables")
    (Tipus_plat 2n))

([IP13_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 100.0))
([IP13_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 10.0))
([IP13_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 20.0))
([IP13_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 30.0))
([IP13_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43449])
    (Quantitat 30.0))
([IP13_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 20.0))
([IP13_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43299])
    (Quantitat 5.0))


([P14] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP14_0] [IP14_1] [IP14_2] [IP14_3] [IP14_4] [IP14_5] [IP14_6] [IP14_7])
    (Nom "Pasta salad with tuna")
    (Tipus_plat 1r 2n))

([IP14_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 151.67))
([IP14_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 76.83))
([IP14_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 80.83))
([IP14_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 72.75))
([IP14_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 16.17))
([IP14_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9195])
    (Quantitat 32.33))
([IP14_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 5.02))
([IP14_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 4.04))


([P15] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP15_0] [IP15_1] [IP15_2])
    (Nom "Tomato salad")
    (Tipus_plat 1r 2n))

([IP15_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 240.77))
([IP15_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 60.19))
([IP15_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 14.45))


([P16] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP16_0] [IP16_1] [IP16_2] [IP16_3] [IP16_4] [IP16_5] [IP16_6])
    (Nom "Caesar salad")
    (Tipus_plat 1r 2n))

([IP16_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 35.44))
([IP16_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 3.54))
([IP16_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 94.5))
([IP16_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11801])
    (Quantitat 7.09))
([IP16_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 11.81))
([IP16_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 23.62))
([IP16_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 28.35))


([P17] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP17_0] [IP17_1] [IP17_2] [IP17_3] [IP17_4] [IP17_5] [IP17_6] [IP17_7] [IP17_8])
    (Nom "Chicken salad with mayonnaise")
    (Tipus_plat 1r 2n))

([IP17_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9195])
    (Quantitat 23.14))
([IP17_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44055])
    (Quantitat 12.63))
([IP17_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 23.14))
([IP17_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 23.14))
([IP17_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 34.71))
([IP17_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43410])
    (Quantitat 34.71))
([IP17_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 13.89))
([IP17_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 2.31))
([IP17_8] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 11.57))


([P18] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP18_0] [IP18_1] [IP18_2] [IP18_3] [IP18_4])
    (Nom "Cheesecake")
    (Tipus_plat Postres))

([IP18_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 54.23))
([IP18_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 36.15))
([IP18_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43261])
    (Quantitat 45.19))
([IP18_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 36.15))
([IP18_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 36.15))


([P19] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP19_0] [IP19_1])
    (Nom "Hot chocolate")
    (Tipus_plat Postres))

([IP19_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19904])
    (Quantitat 25.0))
([IP19_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 200.0))


([P20] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP20_0] [IP20_1] [IP20_2] [IP20_3])
    (Nom "Chocolate cream")
    (Tipus_plat Postres))

([IP20_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 176.0))
([IP20_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 42.24))
([IP20_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 35.2))
([IP20_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18964])
    (Quantitat 1.76))


([P21] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP21_0] [IP21_1] [IP21_2])
    (Nom "Roasted apple")
    (Tipus_plat Postres))

([IP21_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9504])
    (Quantitat 179.05))
([IP21_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 4.48))
([IP21_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 4.48))


([P22] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP22_0] [IP22_1] [IP22_2])
    (Nom "Egg flan")
    (Tipus_plat Postres))

([IP22_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 83.89))
([IP22_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 40.27))
([IP22_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 33.56))


([P23] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP23_0] [IP23_1] [IP23_2] [IP23_3])
    (Nom "Cheese flan")
    (Tipus_plat Postres))

([IP23_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 75.5))
([IP23_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 36.24))
([IP23_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 30.2))
([IP23_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 15.1))


([P24] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP24_0] [IP24_1] [IP24_2] [IP24_3] [IP24_4] [IP24_5])
    (Nom "French toast")
    (Tipus_plat Postres))

([IP24_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18964])
    (Quantitat 1.62))
([IP24_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 24.3))
([IP24_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 32.4))
([IP24_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19908])
    (Quantitat 5.67))
([IP24_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 97.2))
([IP24_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 40.5))


([P25] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP25_0] [IP25_1] [IP25_2] [IP25_3] [IP25_4])
    (Nom "Chicken croquette")
    (Tipus_plat 1r))

([IP25_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 138.75))
([IP25_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7977])
    (Quantitat 9.25))
([IP25_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 18.5))
([IP25_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 7.4))
([IP25_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43410])
    (Quantitat 18.5))


([P26] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP26_0] [IP26_1] [IP26_2] [IP26_3] [IP26_4] [IP26_5] [IP26_6] [IP26_7])
    (Nom "Hawaiian pizza")
    (Tipus_plat 2n))

([IP26_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 40.7))
([IP26_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I4002])
    (Quantitat 11.0))
([IP26_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 33.0))
([IP26_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7977])
    (Quantitat 16.5))
([IP26_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 7.7))
([IP26_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9510])
    (Quantitat 33.0))
([IP26_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 22.0))
([IP26_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43365])
    (Quantitat 66.0))


([P27] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP27_0] [IP27_1] [IP27_2] [IP27_3])
    (Nom "Four cheese pizza")
    (Tipus_plat 2n))

([IP27_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 85.91))
([IP27_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 6.87))
([IP27_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43406])
    (Quantitat 2.58))
([IP27_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 68.73))


([P28] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP28_0] [IP28_1] [IP28_2])
    (Nom "Fried egg with bread")
    (Tipus_plat 1r))

([IP28_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 51.43))
([IP28_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 8.57))
([IP28_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 171.43))


([P29] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP29_0] [IP29_1])
    (Nom "Milk with croissants")
    (Tipus_plat Postres))

([IP29_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 270.0))
([IP29_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18241])
    (Quantitat 200.0))


([P30] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP30_0] [IP30_1] [IP30_2])
    (Nom "Potatoes omelette")
    (Tipus_plat 1r 2n))

([IP30_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 183.82))
([IP30_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 52.94))
([IP30_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 14.71))


([P31] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP31_0] [IP31_1] [IP31_2] [IP31_3] [IP31_4])
    (Nom "French omelette with cheese")
    (Tipus_plat 1r 2n))

([IP31_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 41.67))
([IP31_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 150.0))
([IP31_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 83.33))
([IP31_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 83.33))
([IP31_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 8.33))


([P32] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP32_0] [IP32_1])
    (Nom "Milk with cookies")
    (Tipus_plat Postres))

([IP32_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 270.0))
([IP32_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18423])
    (Quantitat 300.0))


([P33] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP33_0] [IP33_1])
    (Nom "Yogurt with cookies")
    (Tipus_plat Postres))

([IP33_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43261])
    (Quantitat 300.0))
([IP33_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18423])
    (Quantitat 300.0))


([P34] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP34_0] [IP34_1])
    (Nom "Yogurt with kellog's")
    (Tipus_plat Postres))

([IP34_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43261])
    (Quantitat 300.0))
([IP34_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18999])
    (Quantitat 200.0))


([P35] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP35_0])
    (Nom "Milk with kellog's")
    (Tipus_plat Postres))

([IP35_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 270.0))


([P36] of  Plat
    (Apat Esmorzar)
    (Ingredients [IP36_0] [IP36_1])
    (Nom "Yogurt with croissants")
    (Tipus_plat Postres))

([IP36_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43261])
    (Quantitat 300.0))
([IP36_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18241])
    (Quantitat 300.0))


([P37] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP37_0] [IP37_1] [IP37_2])
    (Nom "Filled eggs")
    (Tipus_plat 1r))

([IP37_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I15117])
    (Quantitat 31.43))
([IP37_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 137.14))
([IP37_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43365])
    (Quantitat 42.86))


([P38] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP38_0] [IP38_1] [IP38_2] [IP38_3] [IP38_4] [IP38_5])
    (Nom "Orange salad")
    (Tipus_plat 1r))

([IP38_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9205])
    (Quantitat 38.4))
([IP38_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 96.0))
([IP38_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 57.6))
([IP38_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 19.2))
([IP38_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7051])
    (Quantitat 15.36))
([IP38_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 9.6))


([P39] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP39_0] [IP39_1] [IP39_2] [IP39_3] [IP39_4])
    (Nom "Mixed salad")
    (Tipus_plat 1r 2n))

([IP39_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 96.0))
([IP39_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 57.6))
([IP39_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 19.2))
([IP39_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9195])
    (Quantitat 19.2))
([IP39_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 9.6))


([P40] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP40_0] [IP40_1] [IP40_2] [IP40_3] [IP40_4] [IP40_5] [IP40_6])
    (Nom "Pasta salad with tuna")
    (Tipus_plat 1r 2n))

([IP40_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20521])
    (Quantitat 160.0))
([IP40_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I15117])
    (Quantitat 80.0))
([IP40_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 16.0))
([IP40_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 80.0))
([IP40_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 80.0))
([IP40_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9195])
    (Quantitat 32.0))
([IP40_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 4.0))


([P41] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP41_0])
    (Nom "Coffecake")
    (Tipus_plat Postres))

([IP41_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18417])
    (Quantitat 300.0))


([P42] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP42_0] [IP42_1] [IP42_2] [IP42_3])
    (Nom "Pork escalope")
    (Tipus_plat 2n))

([IP42_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43378])
    (Quantitat 161.7))
([IP42_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 23.1))
([IP42_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 18.48))
([IP42_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 11.09))


([P43] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP43_0] [IP43_1] [IP43_2] [IP43_3] [IP43_4])
    (Nom "Veal escalope")
    (Tipus_plat 2n))

([IP43_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I17438])
    (Quantitat 175.0))
([IP43_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 30.0))
([IP43_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 18.75))
([IP43_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 25.0))
([IP43_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 4.25))


([P44] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP44_0] [IP44_1] [IP44_2])
    (Nom "Roasted lamb")
    (Tipus_plat 2n))

([IP44_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I17464])
    (Quantitat 198.75))
([IP44_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I4002])
    (Quantitat 6.62))
([IP44_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.99))


([P45] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP45_0] [IP45_1] [IP45_2] [IP45_3] [IP45_4] [IP45_5])
    (Nom "Lamb stew")
    (Tipus_plat 2n))

([IP45_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I17464])
    (Quantitat 340.54))
([IP45_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I4002])
    (Quantitat 22.7))
([IP45_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 2.27))
([IP45_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 56.76))
([IP45_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 4.54))
([IP45_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 1.14))


([P46] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP46_0] [IP46_1] [IP46_2] [IP46_3] [IP46_4] [IP46_5] [IP46_6])
    (Nom "Beef stew")
    (Tipus_plat 2n))

([IP46_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43384])
    (Quantitat 206.67))
([IP46_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 46.5))
([IP46_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 10.33))
([IP46_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 10.33))
([IP46_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 10.33))
([IP46_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 20.67))
([IP46_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 20.67))


([P47] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP47_0] [IP47_1])
    (Nom "Grilled pork steak")
    (Tipus_plat 2n))

([IP47_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43378])
    (Quantitat 187.5))
([IP47_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 12.5))


([P48] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP48_0] [IP48_1])
    (Nom "Grilled chicken fillet")
    (Tipus_plat 2n))

([IP48_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43410])
    (Quantitat 187.5))
([IP48_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 12.5))


([P49] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP49_0] [IP49_1] [IP49_2] [IP49_3] [IP49_4] [IP49_5])
    (Nom "Breaded chicken fillet")
    (Tipus_plat 2n))

([IP49_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43410])
    (Quantitat 136.36))
([IP49_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 10.91))
([IP49_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 18.18))
([IP49_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 36.36))
([IP49_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 3.91))
([IP49_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 0.91))


([P50] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP50_0] [IP50_1] [IP50_2] [IP50_3] [IP50_4] [IP50_5] [IP50_6])
    (Nom "Hamburger")
    (Tipus_plat 2n))

([IP50_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43384])
    (Quantitat 112.5))
([IP50_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 12.5))
([IP50_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 25.0))
([IP50_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 12.5))
([IP50_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 12.5))
([IP50_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 68.75))
([IP50_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43598])
    (Quantitat 12.5))


([P51] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP51_0] [IP51_1] [IP51_2] [IP51_3] [IP51_4] [IP51_5])
    (Nom "Sausages with potatoes")
    (Tipus_plat 2n))

([IP51_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16107])
    (Quantitat 200.0))
([IP51_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 2.86))
([IP51_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11801])
    (Quantitat 2.86))
([IP51_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11795])
    (Quantitat 4.29))
([IP51_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 114.29))
([IP51_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 11.43))


([P52] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP52_0])
    (Nom "Apple")
    (Tipus_plat Postres))

([IP52_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9504])
    (Quantitat 200.0))


([P53] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP53_0])
    (Nom "Orange")
    (Tipus_plat Postres))

([IP53_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9205])
    (Quantitat 200.0))


([P54] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP54_0])
    (Nom "Pear")
    (Tipus_plat Postres))

([IP54_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9415])
    (Quantitat 200.0))


([P55] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP55_0])
    (Nom "Banana")
    (Tipus_plat Postres))

([IP55_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9041])
    (Quantitat 200.0))


([P56] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP56_0])
    (Nom "Strawberry")
    (Tipus_plat Postres))

([IP56_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9320])
    (Quantitat 200.0))


([P57] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP57_0])
    (Nom "Pineapple")
    (Tipus_plat Postres))

([IP57_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9510])
    (Quantitat 200.0))


([P58] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP58_0])
    (Nom "Grapes")
    (Tipus_plat Postres))

([IP58_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9134])
    (Quantitat 200.0))


([P59] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP59_0])
    (Nom "Watermelon")
    (Tipus_plat Postres))

([IP59_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9326])
    (Quantitat 200.0))


([P60] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP60_0])
    (Nom "Melon")
    (Tipus_plat Postres))

([IP60_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9184])
    (Quantitat 200.0))


([P61] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP61_0] [IP61_1])
    (Nom "Melon with Spanish ham")
    (Tipus_plat 1r 2n))

([IP61_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9184])
    (Quantitat 200.0))
([IP61_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7977])
    (Quantitat 200.0))


([P62] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP62_0])
    (Nom "Kiwi")
    (Tipus_plat Postres))

([IP62_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9520])
    (Quantitat 200.0))


([P63] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP63_0])
    (Nom "Cherries")
    (Tipus_plat Postres))

([IP63_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9367])
    (Quantitat 200.0))


([P64] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP64_0])
    (Nom "Plums")
    (Tipus_plat Postres))

([IP64_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9379])
    (Quantitat 200.0))


([P65] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP65_0])
    (Nom "Guava")
    (Tipus_plat Postres))

([IP65_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9140])
    (Quantitat 200.0))


([P66] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP66_0])
    (Nom "Blueberries")
    (Tipus_plat Postres))

([IP66_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9353])
    (Quantitat 200.0))


([P67] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP67_0] [IP67_1] [IP67_2] [IP67_3] [IP67_4] [IP67_5])
    (Nom "Carrot cake")
    (Tipus_plat Postres))

([IP67_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 40.0))
([IP67_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 28.0))
([IP67_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 5.0))
([IP67_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 25.0))
([IP67_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44048])
    (Quantitat 20.0))
([IP67_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 20.0))


([P68] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP68_0] [IP68_1] [IP68_2] [IP68_3])
    (Nom "Lemon cake")
    (Tipus_plat Postres))

([IP68_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 30.0))
([IP68_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 10.0))
([IP68_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 100.0))
([IP68_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 100.0))


([P69] of  Plat
    (Apat Esmorzar Dinar Sopar)
    (Ingredients [IP69_0] [IP69_1] [IP69_2] [IP69_3] [IP69_4])
    (Nom "Chocolate brownie")
    (Tipus_plat Postres))

([IP69_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I19904])
    (Quantitat 16.0))
([IP69_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 16.0))
([IP69_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 100.0))
([IP69_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 40.0))
([IP69_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I12738])
    (Quantitat 20.0))


([P70] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP70_0] [IP70_1] [IP70_2] [IP70_3] [IP70_4] [IP70_5] [IP70_6])
    (Nom "Vegetable stew")
    (Tipus_plat 1r))

([IP70_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 153.85))
([IP70_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11703])
    (Quantitat 38.46))
([IP70_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43449])
    (Quantitat 76.92))
([IP70_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 38.46))
([IP70_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 76.92))
([IP70_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 15.38))
([IP70_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 7.69))


([P71] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP71_0] [IP71_1] [IP71_2] [IP71_3] [IP71_4] [IP71_5])
    (Nom "Baked vegetables")
    (Tipus_plat 1r ))

([IP71_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 126.32))
([IP71_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11856])
    (Quantitat 39.47))
([IP71_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11709])
    (Quantitat 39.47))
([IP71_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 39.47))
([IP71_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11994])
    (Quantitat 39.47))
([IP71_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11848])
    (Quantitat 39.47))


([P72] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP72_0] [IP72_1] [IP72_2] [IP72_3] [IP72_4])
    (Nom "Peppers filled with tuna")
    (Tipus_plat 1r 2n))

([IP72_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I15117])
    (Quantitat 100.0))
([IP72_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 50.0))
([IP72_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 10.0))
([IP72_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 6.0))
([IP72_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 25.0))


([P73] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP73_0] [IP73_1] [IP73_2] [IP73_3] [IP73_4] [IP73_5])
    (Nom "Escalivada")
    (Tipus_plat 1r 2n))

([IP73_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43146])
    (Quantitat 76.9))
([IP73_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 76.9))
([IP73_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 76.9))
([IP73_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 76.9))
([IP73_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 3.08))
([IP73_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 3.54))


([P74] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP74_0] [IP74_1] [IP74_2] [IP74_3] [IP74_4])
    (Nom "Stewed potatoes")
    (Tipus_plat 1r 2n))

([IP74_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 272.73))
([IP74_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 13.64))
([IP74_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 6.82))
([IP74_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 4.09))
([IP74_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.36))


([P75] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP75_0] [IP75_1] [IP75_2] [IP75_3])
    (Nom "Stewed cauliflower")
    (Tipus_plat 1r))

([IP75_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11968])
    (Quantitat 120.0))
([IP75_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 120.0))
([IP75_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 15.0))
([IP75_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 6.0))


([P76] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP76_0] [IP76_1] [IP76_2] [IP76_3])
    (Nom "Cucumber salad")
    (Tipus_plat 1r))

([IP76_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11206])
    (Quantitat 150.0))
([IP76_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 90.0))
([IP76_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 9.0))
([IP76_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 6.0))


([P77] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP77_0] [IP77_1] [IP77_2] [IP77_3])
    (Nom "Avocado salad")
    (Tipus_plat 1r))

([IP77_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9039])
    (Quantitat 150.0))
([IP77_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 100.0))
([IP77_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 5.0))
([IP77_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 50.0))


([P78] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP78_0] [IP78_1] [IP78_2])
    (Nom "Garlic mushrooms")
    (Tipus_plat 1r))

([IP78_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11998])
    (Quantitat 181.82))
([IP78_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 7.27))
([IP78_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 10.91))


([P79] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP79_0] [IP79_1] [IP79_2] [IP79_3] [IP79_4])
    (Nom "Pisto")
    (Tipus_plat 1r 2n))

([IP79_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 100.0))
([IP79_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 100.0))
([IP79_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 50.0))
([IP79_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43146])
    (Quantitat 20.0))
([IP79_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 25.0))


([P80] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP80_0] [IP80_1] [IP80_2] [IP80_3] [IP80_4])
    (Nom "Vegetables soup")
    (Tipus_plat 1r ))

([IP80_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 52.5))
([IP80_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 52.5))
([IP80_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43449])
    (Quantitat 52.5))
([IP80_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11795])
    (Quantitat 52.5))
([IP80_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 42.0))


([P81] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP81_0] [IP81_1] [IP81_2] [IP81_3])
    (Nom "Creamed spinach")
    (Tipus_plat 1r ))

([IP81_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11856])
    (Quantitat 333.33))
([IP81_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 4.44))
([IP81_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 55.56))
([IP81_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 3.33))


([P82] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP82_0] [IP82_1] [IP82_2] [IP82_3])
    (Nom "Mushrooms' cream")
    (Tipus_plat 1r))

([IP82_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11998])
    (Quantitat 210.77))
([IP82_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42141])
    (Quantitat 42.15))
([IP82_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 5.27))
([IP82_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 21.08))


([P83] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP83_0] [IP83_1] [IP83_2] [IP83_3] [IP83_4] [IP83_5])
    (Nom "Gazpacho")
    (Tipus_plat 1r))

([IP83_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 71.88))
([IP83_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 103.5))
([IP83_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11206])
    (Quantitat 35.94))
([IP83_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 14.38))
([IP83_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 43.12))
([IP83_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.44))


([P84] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP84_0] [IP84_1] [IP84_2] [IP84_3] [IP84_4] [IP84_5])
    (Nom "Legumes' puree")
    (Tipus_plat 1r 2n))

([IP84_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16370])
    (Quantitat 127.85))
([IP84_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 63.92))
([IP84_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 42.62))
([IP84_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 42.62))
([IP84_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 17.05))
([IP84_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 63.92))


([P85] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP85_0] [IP85_1] [IP85_2] [IP85_3] [IP85_4] [IP85_5])
    (Nom "Vegetables' puree")
    (Tipus_plat 1r))

([IP85_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11848])
    (Quantitat 127.85))
([IP85_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 63.92))
([IP85_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 42.62))
([IP85_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 42.62))
([IP85_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 17.05))
([IP85_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11968])
    (Quantitat 63.92))


([P86] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP86_0] [IP86_1] [IP86_2] [IP86_3] [IP86_4])
    (Nom "Mashed potatoes")
    (Tipus_plat 1r 2n))

([IP86_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 191.67))
([IP86_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 25.56))
([IP86_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 10.22))
([IP86_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 10.22))
([IP86_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 2.56))


([P87] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP87_0] [IP87_1] [IP87_2] [IP87_3] [IP87_4] [IP87_5] [IP87_6] [IP87_7])
    (Nom "Mashed vegetables")
    (Tipus_plat 1r 2n))

([IP87_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11765])
    (Quantitat 65.2))
([IP87_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11848])
    (Quantitat 27.17))
([IP87_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11856])
    (Quantitat 32.6))
([IP87_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 54.33))
([IP87_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 8.15))
([IP87_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 40.75))
([IP87_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 54.33))
([IP87_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11890])
    (Quantitat 67.92))


([P88] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP88_0] [IP88_1] [IP88_2])
    (Nom "Mashed carrots")
    (Tipus_plat 1r))

([IP88_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 228.57))
([IP88_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43214])
    (Quantitat 22.86))
([IP88_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 228.57))


([P89] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP89_0] [IP89_1] [IP89_2] [IP89_3] [IP89_4])
    (Nom "Castilian soup")
    (Tipus_plat 1r))

([IP89_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 100.0))
([IP89_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 66.67))
([IP89_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16107])
    (Quantitat 16.67))
([IP89_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 16.67))
([IP89_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 8.33))


([P90] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP90_0] [IP90_1] [IP90_2] [IP90_3] [IP90_4])
    (Nom "Rice soup")
    (Tipus_plat 1r 2n))

([IP90_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 191.67))
([IP90_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 38.33))
([IP90_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 38.33))
([IP90_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 38.33))
([IP90_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 38.33))


([P91] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP91_0] [IP91_1] [IP91_2] [IP91_3] [IP91_4])
    (Nom "Fish soup")
    (Tipus_plat 1r))

([IP91_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 22.22))
([IP91_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 111.11))
([IP91_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 44.44))
([IP91_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11795])
    (Quantitat 33.33))
([IP91_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 66.67))


([P92] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP92_0] [IP92_1] [IP92_2] [IP92_3] [IP92_4])
    (Nom "Tomato soup")
    (Tipus_plat 1r))

([IP92_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 249.33))
([IP92_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43543])
    (Quantitat 9.97))
([IP92_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42141])
    (Quantitat 62.33))
([IP92_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43311])
    (Quantitat 37.4))
([IP92_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11795])
    (Quantitat 18.7))


([P93] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP93_0] [IP93_1] [IP93_2] [IP93_3] [IP93_4] [IP93_5] [IP93_6] [IP93_7] [IP93_8])
    (Nom "Julianne soup")
    (Tipus_plat 1r))

([IP93_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11960])
    (Quantitat 74.0))
([IP93_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11257])
    (Quantitat 74.0))
([IP93_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11795])
    (Quantitat 29.4))
([IP93_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 26.4))
([IP93_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11890])
    (Quantitat 74.0))
([IP93_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 33.6))
([IP93_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 33.6))
([IP93_7] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43144])
    (Quantitat 42.0))
([IP93_8] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44055])
    (Quantitat 27.0))


([P94] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP94_0] [IP94_1] [IP94_2] [IP94_3] [IP94_4] [IP94_5])
    (Nom "Mero in sauce")
    (Tipus_plat 2n))

([IP94_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 200.0))
([IP94_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 12.5))
([IP94_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 25.0))
([IP94_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11709])
    (Quantitat 10.0))
([IP94_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 10.0))
([IP94_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 2.5))


([P95] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP95_0] [IP95_1] [IP95_2] [IP95_3] [IP95_4])
    (Nom "Baked hake")
    (Tipus_plat 2n))

([IP95_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 178.57))
([IP95_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I43285])
    (Quantitat 21.43))
([IP95_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 8.93))
([IP95_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 17.86))
([IP95_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 26.79))


([P96] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP96_0] [IP96_1] [IP96_2] [IP96_3] [IP96_4] [IP96_5] [IP96_6])
    (Nom "Baked golden fish")
    (Tipus_plat 2n))

([IP96_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 160.71))
([IP96_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 24.11))
([IP96_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 12.86))
([IP96_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 154.29))
([IP96_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9195])
    (Quantitat 16.07))
([IP96_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I9150])
    (Quantitat 32.14))
([IP96_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I7056])
    (Quantitat 57.86))


([P97] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP97_0] [IP97_1] [IP97_2] [IP97_3])
    (Nom "Rape stew")
    (Tipus_plat 2n))

([IP97_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 316.0))
([IP97_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 23.7))
([IP97_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I16386])
    (Quantitat 15.8))
([IP97_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 31.6))


([P98] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP98_0] [IP98_1] [IP98_2] [IP98_3] [IP98_4] [IP98_5] [IP98_6])
    (Nom "Baked salmon")
    (Tipus_plat 2n))

([IP98_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 176.92))
([IP98_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 35.38))
([IP98_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18972])
    (Quantitat 3.54))
([IP98_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 0.88))
([IP98_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 1.77))
([IP98_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 8.85))
([IP98_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 1.88))


([P99] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP99_0] [IP99_1] [IP99_2] [IP99_3] [IP99_4] [IP99_5] [IP99_6])
    (Nom "Sardines in marinade")
    (Tipus_plat 2n))

([IP99_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I83110])
    (Quantitat 240.0))
([IP99_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I44005])
    (Quantitat 32.0))
([IP99_2] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I2069])
    (Quantitat 64.0))
([IP99_3] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11807])
    (Quantitat 32.0))
([IP99_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I18963])
    (Quantitat 4.8))
([IP99_5] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I20080])
    (Quantitat 32.0))
([IP99_6] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I31034])
    (Quantitat 3.2))













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

(deftemplate MAIN::restriccionsNutricionalsSetmanals "aqui indiquem les diferents restriccions nutricionals d'un horari (kcal i la resta grams)"
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
	(not (noTornisPrincipi))
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
	(bind ?q (pregunta-numerica "How often do you practice sport? [not-much(1) regularly(2)]:  " 1 2))
	(switch ?q
		(case 1 then (assert(Activitat 1.2)))
		(case 2 then (assert(Activitat 1.375)))
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
			(case 1 then (assert(Restriccio Meat)) (assert(Restriccio Fish))(assert (RestriccionsAfegides))(assert(Restriccio S)))
			(case 2 then (assert(Restriccio Meat)) (assert(Restriccio Fish)) (assert(Restriccio Dairy_Eggs))(assert (RestriccionsAfegides))(assert(Restriccio S)))
		)

)



;DEFINIM LES RESTRICCIONS
(defrule PREGUNTES::preguntar_alergies_restriccions "regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(not(FI))
	=>
		(bind ?q (pregunta-general "Do you have any restriction of food you MUST NOT eat? [Yes(Y) No(N)]:  "))
		(switch ?q
			(case Y then (assert(Restriccio S))(assert(Restric)))
			(case N then (assert(Restriccio N)))
		)
)

(defrule PREGUNTES::definir_alergies_restriccions"regla para saber si tiene algun tipo de alergia o restricción"
	(nou_usuari)
	(Restriccio S)
	(Restric)
	(not(FI))
	=>
	;;AQUI CALDRIA AMPLIAR-HO MÉS A PODER SER
	(printout t "Restrictions: " crlf)
	(printout t "1. Meat " crlf)
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
			(case 1 then   (assert(Restriccio Meat)))
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
                (bind ?q (pregunta-general "Write the name of the product:  "))
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
	(printout t "1. Meat " crlf)
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
			(case 1 then   (assert(PreferenciaN Meat)))
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
                (bind ?q (pregunta-general "Write the name of the product:  "))
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
	(printout t "1. Meat " crlf)
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
			(case 1 then   (assert(PreferenciaP Meat)))
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
                (bind ?q (pregunta-general "Write the name of the product:  "))
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
			(case 1 then   (assert(Osteoporosis))(assert(MalaltiesAfegides)))
			(case 2 then   (assert(Problemes articulars))(assert(MalaltiesAfegides)))
			(case 3 then   (assert(Diabetis))(assert(MalaltiesAfegides)))
			(case 4 then   (assert(Hipertensio))(assert(MalaltiesAfegides)))
		)
	)

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
    (bind ?prot (/ (* ?energia 0.13) 4)) ;13% de la energia
    (bind ?colesterolMax 0.3) ; < 0.3g diariament
    (bind ?hidrats (/ (* ?energia 0.5) 4)) ;15% de la energia
    (bind ?greixosMaxims (/ (* ?energia 0.35) 9)) ;35% de la energia com a maxim en grams
    (bind ?fibra 25)
    (bind ?sucre 50) ;OMS
    (bind ?minerals 0);

    (if (and (< ?e 70) (eq ?g M)) then
        (bind ?minerals 1.66)
    )
    (if (and (< ?e 70) (eq ?g F)) then
        (bind ?minerals 1.620)
    )
    (if (and (>= ?e 70) (eq ?g M)) then
        (bind ?minerals 1.766)
    )
    (if (and (>= ?e 70) (eq ?g F)) then
        (bind ?minerals 1.660)
    )

    ;Fem el calcul setmanal multiplicant-ho tot per 7
    (bind ?energia (* ?energia 7))
    (bind ?vitamines (* ?vitamines 7))
    (bind ?hidrats (* ?hidrats 7))
    (bind ?greixosMaxims (* ?greixosMaxims 7))
    (bind ?prot (* ?prot 7))
    (bind ?fibra (* ?fibra 7))
    (bind ?minerals (* ?minerals 7))
    (bind ?sucre (* ?sucre 7))
    (bind ?colesterolMax (* ?colesterolMax 7))



    (assert (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax)))
    (assert(necessitat_calculades))
)


(defrule INFERIR_DADES::ReduimLesQuantitats "Anem a fer que com a molt un plat sigui de 150g per postres o esmorzars i 100 per primers o segons"

    (necessitat_calculades)
    ?plat <- (object (is-a Plat))
    =>
    ;Calculem les quantitats
    (bind ?quantitat 0)
    (bind ?ingredients (send ?plat get-Ingredients))
    (progn$ (?ing ?ingredients)
        (bind ?quantitat (+ ?quantitat (send ?ing get-Quantitat)))
    )

    ;si entra, modifiquem les quantitats proporcionalment
    (if (and (> ?quantitat 150) (not (member$ Postres (send ?plat get-Tipus_plat)))) then

        (bind ?proporcio (/ 150 ?quantitat))    ;trobem la proporcio amb la que ho hem de reduir
        (progn$ (?ing ?ingredients)
            (bind ?a (instance-address * ?ing))
            (bind ?quantitatNova (* (send ?a get-Quantitat) ?proporcio))

            (send ?a put-Quantitat ?quantitatNova)
        )
    )

      ;si entra, modifiquem les quantitats proporcionalment
    (if (and (> ?quantitat 100) (member$ Postres (send ?plat get-Tipus_plat))) then
        (bind ?proporcio (/ 100 ?quantitat))    ;trobem la proporcio amb la que ho hem de reduir
        (progn$ (?ing ?ingredients)
            (bind ?a (instance-address * ?ing))
            (bind ?quantitatNova (* (send ?a get-Quantitat) ?proporcio))

            (send ?a put-Quantitat ?quantitatNova)
        )
    )

)

(defrule INFERIR_DADES::doesntDoAnything "Here we would add the different rules"
  (nou_usuari)
  (necessitat_calculades)
  =>
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

	(assert (PreferenciaP Dairy_Eggs))
	(assert (PreferenciaP Breakfast_Cereals))
	(assert (PreferenciaP Spinach))
	(assert (PreferenciaP Nuts))
	(assert (PreferenciaP Oranges))
	(assert (PreferenciaP Beans))
	(assert (PreferenciaP Cabbage))
	(assert (PreferenciaP Fish))
)

(defrule MALALTIES::problemes_articulars "Aqui definim els fets que implica"
	(nou_usuari)
	(MalaltiesAfegides)
	(Problemes articulars)
	=>
	(assert (PreferenciesP S))
	(assert (PreferenciesAfegidesP))

	(assert (PreferenciaP Broccoli))
	(assert (PreferenciaP Raspberries))
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
	(assert (PreferenciaP Potatoes))
	(assert (PreferenciaP Legumes))


	(assert (PreferenciesN S))
	(assert (PreferenciesAfegidesN))
	(assert (PreferenciaN Chocolate))
	(assert (PreferenciaN Meat))
	(assert (PreferenciaN Mustard))

	;afegir carns amb poc greix (Aquesta sintexis per eliminar els plats que ho compleixin)
	(assert (RestriccionsAfegidesFamiliaNutrient))
	(assert (RestriccioFamiliaNutrient Meat Greixos 10)) ;syntaxis Familia/Aliment Nom_Nutrient Quantitat_en_grams

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

	(assert (PreferenciaP Bananas))
	(assert (PreferenciaP Strawberries))
	(assert (PreferenciaP Nuts))
	(assert (PreferenciaP Cinnamon))
	(assert (PreferenciaP Wheat-flour))
	(assert (PreferenciaP Olives))
	(assert (PreferenciaP Spinach))

	(assert (PreferenciaN Dairy_Eggs))
	(assert (PreferenciaN Honey))
	(assert (PreferenciaN Sweets))
	(assert (PreferenciaN Chocolate))
	(assert (PreferenciaN Fruits))
	(assert (PreferenciaN Fats_Oils))

	(assert (RestriccionsAfegidesFamiliaNutrient))
	(assert (RestriccioFamiliaNutrient Sweets Sucre 10)) ;syntaxis Familia/Aliment Nom_Nutrient Quantitat_en_grams
	(assert (RestriccioFamiliaNutrient Fruits Sucre 10))
	(assert (RestriccioFamiliaNutrient Breakfast_Cereals Sucre 10))
	(assert (RestriccioFamiliaNutrient Baked Sucre 10))
)

(defrule MALALTIES::passemAFiltrat "No fa res. Passem al seguent modul"
	(nou_usuari)
	=>
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


(defrule FILTRAT::filtremPlats "aqui filtrem els pats que no son possibles"
    (nou_usuari)
    (Restriccio S)
    (Restriccio ?P)
    ?plat <- (object (is-a Plat))
    =>

    (bind ?i 1)
	(bind ?FI FALSE)
     (while (and (eq ?FI FALSE) (<= ?i (length$ (send ?plat get-Ingredients))))
      do
        (bind ?ingredient (nth$ ?i (send ?plat get-Ingredients))) ;agafem el n-èssim ingredient
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        ;Comprovem si pertany a una familia a potenciar

       (if (eq (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
					(printout t "We delete the dish " (send ?plat get-Nom) " because it contains" (send ?ingredientGeneral get-Nom_ingredient) crlf)
					(send ?plat delete)
					(bind ?FI TRUE)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
            (if (and(= (str-compare ?P ?a) 0) (eq ?FI FALSE)) then
                            (printout t "We delete the dish " (send ?plat get-Nom) " because it contains" (send ?ingredientGeneral get-Nom_ingredient) crlf)
                            (printout t crlf)
                            (send ?plat delete)
                            (bind ?FI TRUE)
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
                        (printout t "We delete the dish " (send ?plat get-Nom) " because it contains " ?quantitat " grams of " ?n " and is of type " ?f crlf)
                        (printout t crlf)
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
      (assert (noTornisPrincipi))
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
	(bind ?ingredients_plat (send ?plat get-Ingredients))
	(progn$ (?ingredient ?ingredients_plat)
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        (if (member$ ?n (send ?ingredientGeneral get-Temporada)) then
            (printout t "We encourage the dish " (send ?plat get-Nom) " because it contains "  (send ?ingredientGeneral get-Nom_ingredient) " which is of this season." crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 1))
            (send ?plat put-GrauRecomanacio ?grau)
        )
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
	(bind ?ingredients_plat (send ?plat get-Ingredients))
 	(progn$ (?ingredient ?ingredients_plat)
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        ;Comprovem si pertany a una familia a potenciar
        (if (member$ (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
            (printout t "We do not encourage the dish " (send ?plat get-Nom) " because it contains " (send ?ingredientGeneral get-Nom_ingredient) "." crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) -10))
            (send ?plat put-GrauRecomanacio ?grau)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
         (progn$ (?it ?P)
            (if (= (str-compare ?it ?a) 0) then
            (printout t "We do not encourage the dish " (send ?plat get-Nom) " because it contains " (send ?ingredientGeneral get-Nom_ingredient) "." crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) -10))
            (send ?plat put-GrauRecomanacio ?grau))
        )
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
                        (printout t "We don't encourage the dish " (send ?plat get-Nom) " because it contains " ?quantitat " grams of " ?n " and is of type " ?f crlf)
                        (bind ?grau (+ (send ?plat get-GrauRecomanacio) -10))
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
	(bind ?ingredients_plat (send ?plat get-Ingredients))
	(progn$ (?ingredient ?ingredients_plat)
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))

        ;Comprovem si pertany a una familia a potenciar
        (if (member$ (send ?ingredientGeneral get-Familia) ?P) then    ;comprovem si son de la mateixa familia
            (printout t "We do encourage the dish " (send ?plat get-Nom) " because it contains " (send ?ingredientGeneral get-Nom_ingredient) "." crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 5))
            (send ?plat put-GrauRecomanacio ?grau)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
         (progn$ (?it ?P)
            (if (= (str-compare ?it ?a) 0) then
            (printout t "We do encourage the dish " (send ?plat get-Nom) " because it contains " (send ?ingredientGeneral get-Nom_ingredient) "." crlf)
            (bind ?grau (+ (send ?plat get-GrauRecomanacio) 5))
            (send ?plat put-GrauRecomanacio ?grau))
        )
  )
)


(defrule PREFERENCIES::acabatLesPreferencia "Saltem al seguent modul"
    (nou_usuari)
    =>
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
    (nou_usuari)
    (not (FI))
    =>

    (assert (menusDiaris creats))
    (assert (menuDiari (dia 1)))
    (assert (menuDiari (dia 2)))
    (assert (menuDiari (dia 3)))
    (assert (menuDiari (dia 4)))
    (assert (menuDiari (dia 5)))
    (assert (menuDiari (dia 6)))
    (assert (menuDiari (dia 7)))
    (assert (infoNutricionalMenu))
)


(deffunction MENUS::obtenirInfoPlats ($?plats)
	(bind ?kcal 0)
    (bind ?prot 0)
    (bind ?hid 0)
    (bind ?g 0)
    (bind ?a 0)
    (bind ?m 0)
    (bind ?f 0)
    (bind ?s 0)
    (bind ?col 0)
    (bind ?vit 0)

	(progn$ (?plat ?plats)
		(bind ?ingredients_plat (send ?plat get-Ingredients))
		(progn$ (?ingredient ?ingredients_plat)   ;iterem sobre tots els seus ingredients
            (bind ?quantitatIngredient (send ?ingredient get-Quantitat)) ;quantitat de l'ingredient
            (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general)) ;ingredient general

            (bind ?kcal (+ ?kcal (* (send ?ingredientGeneral get-Valor_energetic) (/ ?quantitatIngredient 100))))    ;sumem les kcalories
            (bind ?nutrients (send ?ingredientGeneral get-Nutrients))

            (progn$ (?nutrient ?nutrients)

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
            )
        )
    )
    (bind ?infoNutricionalPlats (create$ ?kcal ?prot ?hid ?g ?a ?m ?f ?s ?col ?vit))
    (return ?infoNutricionalPlats)	;retornem aquesta llista
)


(defrule MENUS::obtenirInfoNutricionalPlat "aqui sumarem la informacio nutricional de cada ingredient del plat"
    (nou_usuari)
    (infoNutricionalMenu)
    ?plat <- (object (is-a Plat))
    =>
		(bind $?info (obtenirInfoPlats ?plat))
		(bind ?kcal (nth$ 1 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?prot (nth$ 2 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?hid (nth$ 3 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?g (nth$ 4 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?a (nth$ 5 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?m (nth$ 6 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?f (nth$ 7 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?s (nth$ 8 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?col (nth$ 9 ?info)) ;agafem el n-èssim IngredientConcret
		(bind ?vit (nth$ 10 ?info)) ;agafem el n-èssim IngredientConcret

    (assert (infoNutricionalPlat (plat ?plat) (Vitamines ?vit) (Proteines ?prot) (Hidrats_de_carboni ?hid) (Greixos ?g) (Sucre ?s) (Aigua ?a) (Minerals ?m) (Fibra ?f)(Colesterol ?col) (Energia ?kcal)))
    (assert (ValorNutricionalPlats))
)


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

	(assert (hemCalculatElsPlats))

)



(defrule MENUS::calculaPosicionsAleatories
    (numeroSoparPrimers ?nSP)
    (numeroDinarPrimers ?nDS)
    (numeroEsmorzars ?nE)
    (numeroPostres ?nP)
    (hemCalculatElsPlats)
    =>
    (assert (dia 1))
    (assert (pos1 (random 1 ?nE)))
    (assert (pos2 (random 1 ?nDS)))
    (assert (pos3 (random 1 ?nSP)))
    (assert (pos4 (random 1 ?nP)))
    (assert (podemCalcular))
)



(defrule MENUS::completarMenu "Completem el esmorzar, dinar segon i sopar primer i sopar postres"
    (nou_usuari)
    (not (FI))
    (ValorNutricionalPlats)
    (podemCalcular)
    (not(menuMigOmplert))

    ?dd <- (dia ?d)
    ?p1 <- (pos1 ?pos1)
    ?p2 <- (pos2 ?pos2)
    ?p3 <- (pos3 ?pos3)
    ?p4 <- (pos4 ?pos4)

    ;Aixo ho farem servir per si ens cal tornar a buscar una altre combinacio
    (numeroSoparPrimers ?nSP)
    (numeroDinarSegons ?nDS)
    (numeroEsmorzars ?nE)
    (numeroPostres ?nP)

    ?menu <- (menuDiari (dia ?d))

    ;carreguem els nutrients que tenim del menu fins ara
    ?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

    ;carreguem les restriccions nutricionals setmanals
    ?r <- (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax))


    ;si cal podem jugar en marcar nosaltres la posicio per tal que sigui sempre dels primers
    ?recE <- (solucionOrdenadaE (posicio ?pos1) (plat ?platE1))
    ?recDS1 <- (solucionOrdenadaDS (posicio ?pos2) (plat ?platDS1))
    ?recSP1 <- (solucionOrdenadaSP (posicio ?pos3) (plat ?platSP1))
    ?recSPostres1 <- (solucionOrdenadaP (posicio ?pos4) (plat ?platSPostres1))

    =>
    (retract ?p1)
    (retract ?p2)
    (retract ?p3)
    (retract ?p4)

    ;Nomes agafarem plats que siguin recomanables. La eleccio sera aleatoria
    (if (and (>= (send ?platE1 get-GrauRecomanacio) 0)
             (>= (send ?platDS1 get-GrauRecomanacio) 0)
             (>= (send ?platSP1 get-GrauRecomanacio) 0)
             (>= (send ?platSPostres1 get-GrauRecomanacio) 0))   then   ;comprovem que siguin recomanables

        ;actualitzem la informacio del menu setmanal
        (bind $?info (obtenirInfoPlats (create$ ?platE1 ?platDS1 ?platSP1 ?platSPostres1)))

        (modify ?menu (esmorzar ?platE1)(dinarSegon ?platDS1)(soparPrimer ?platSP1)(soparPostres ?platSPostres1))

        ;calculem els nous valors nutricionals setmanals
        (bind ?kcal (+ ?e0 (nth$ 1 ?info)))
        (bind ?prot (+ ?p0 (nth$ 2 ?info)))
        (bind ?hid (+ ?h0 (nth$ 3 ?info)))
        (bind ?g (+ ?g0 (nth$ 4 ?info)))
        (bind ?m (+ ?m0 (nth$ 6 ?info)))
        (bind ?f (+ ?f0 (nth$ 7 ?info)))
        (bind ?s (+ ?s0 (nth$ 8 ?info)))
        (bind ?col (+ ?c0 (nth$ 9 ?info)))
        (bind ?vit (+ ?v0 (nth$ 10 ?info)))

        ;actualitzem la info nutricional del menu
        (modify ?ms (Energia ?kcal)(Minerals ?m) (Proteines ?prot) (Vitamines ?vit) (Fibra ?f)(Hidrats_de_carboni ?hid) (Greixos ?g) (Sucre ?s) (Colesterol ?col))

        (retract ?dd)
        (assert (dia (+ ?d 1))) ;fem el seguent dia

        (if (< ?d 7) then
            (assert (pos1 (random 1 ?nE)))
            (assert (pos2 (random 1 ?nDS)))
            (assert (pos3 (random 1 ?nSP)))
            (assert (pos4 (random 1 ?nP)))

        else
            (assert (menuMigOmplert))
        )

    else
        (assert (pos1 (random 1 ?nE)))
        (assert (pos2 (random 1 ?nDS)))
        (assert (pos3 (random 1 ?nSP)))
        (assert (pos4 (random 1 ?nP)))
    )
)



(defrule MENUS::reinicialitzemCountersIValorsAleatoris
    (not (FI))
    (numeroSoparSegons ?nSS)
    (numeroDinarPrimers ?nDP)
    (numeroPostres ?nP)
    (menuMigOmplert)
    =>
    (assert (counter 1))
    (assert (menuCompletat1))
    (assert (pos1 (random 1 ?nDP)))
    (assert (pos2 (random 1 ?nDP)))
    (assert (pos3 (random 1 ?nDP)))
    (assert (pos4 (random 1 ?nDP)))
    (assert (pos5 (random 1 ?nDP)))
    (assert (pos6 (random 1 ?nDP)))
    (assert (pos7 (random 1 ?nDP)))

    (assert (pos8 (random 1 ?nSS)))
    (assert (pos9 (random 1 ?nSS)))
    (assert (pos10 (random 1 ?nSS)))
    (assert (pos11 (random 1 ?nSS)))
    (assert (pos12 (random 1 ?nSS)))
    (assert (pos13 (random 1 ?nSS)))
    (assert (pos14 (random 1 ?nSS)))

    (assert (pos15 (random 1 ?nP)))
    (assert (pos16 (random 1 ?nP)))
    (assert (pos17 (random 1 ?nP)))
    (assert (pos18 (random 1 ?nP)))
    (assert (pos19 (random 1 ?nP)))
    (assert (pos20 (random 1 ?nP)))
    (assert (pos21 (random 1 ?nP)))

)


(defrule MENUS::completarLaResta "Completem el que queda de menu per tal que compleixi les restriccions"
		(nou_usuari)
		(menuCompletat1)
		(not (FI))
		(not (menuCompletat))

		?p1 <- (pos1 ?pos1)
		?p2 <- (pos2 ?pos2)
		?p3 <- (pos3 ?pos3)
		?p4 <- (pos4 ?pos4)
		?p5 <- (pos5 ?pos5)
		?p6 <- (pos6 ?pos6)
		?p7 <- (pos7 ?pos7)
		?p8 <- (pos8 ?pos8)
		?p9 <- (pos9 ?pos9)
		?p10 <- (pos10 ?pos10)
		?p11 <- (pos11 ?pos11)
		?p12 <- (pos12 ?pos12)
		?p13 <- (pos13 ?pos13)
		?p14 <- (pos14 ?pos14)
		?p15 <- (pos15 ?pos15)
		?p16 <- (pos16 ?pos16)
		?p17 <- (pos17 ?pos17)
		?p18 <- (pos18 ?pos18)
		?p19 <- (pos19 ?pos19)
		?p20 <- (pos20 ?pos20)
		?p21 <- (pos21 ?pos21)

		?cc <- (counter ?counter)

        (numeroSoparSegons ?nSS)
        (numeroDinarPrimers ?nDP)
        (numeroPostres ?nP)

		;aqui sabem el que tenim
		?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

		?r <- (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax))

        ;Trobem dinars primers
		?d1 <- (solucionOrdenadaDP (posicio ?pos1) (plat ?dinar1))
		?d2 <- (solucionOrdenadaDP (posicio ?pos2) (plat ?dinar2))
		?d3 <- (solucionOrdenadaDP (posicio ?pos3) (plat ?dinar3))
		?d4 <- (solucionOrdenadaDP (posicio ?pos4) (plat ?dinar4))
		?d5 <- (solucionOrdenadaDP (posicio ?pos5) (plat ?dinar5))
		?d6 <- (solucionOrdenadaDP (posicio ?pos6) (plat ?dinar6))
		?d7 <- (solucionOrdenadaDP (posicio ?pos7) (plat ?dinar7))

		;Trobem sopars segons
		?s1 <- (solucionOrdenadaSS (posicio ?pos8) (plat ?sopar1))
		?s2 <- (solucionOrdenadaSS (posicio ?pos9) (plat ?sopar2))
		?s3 <- (solucionOrdenadaSS (posicio ?pos10) (plat ?sopar3))
		?s4 <- (solucionOrdenadaSS (posicio ?pos11) (plat ?sopar4))
		?s5 <- (solucionOrdenadaSS (posicio ?pos12) (plat ?sopar5))
		?s6 <- (solucionOrdenadaSS (posicio ?pos13) (plat ?sopar6))
		?s7 <- (solucionOrdenadaSS (posicio ?pos14) (plat ?sopar7))

		;Trobem els dinars postres
		?h1 <- (solucionOrdenadaP (posicio ?pos15) (plat ?postre1))
		?h2 <- (solucionOrdenadaP (posicio ?pos16) (plat ?postre2))
		?h3 <- (solucionOrdenadaP (posicio ?pos17) (plat ?postre3))
		?h4 <- (solucionOrdenadaP (posicio ?pos18) (plat ?postre4))
		?h5 <- (solucionOrdenadaP (posicio ?pos19) (plat ?postre5))
		?h6 <- (solucionOrdenadaP (posicio ?pos20) (plat ?postre6))
		?h7 <- (solucionOrdenadaP (posicio ?pos21) (plat ?postre7))


		;carreguem els menus
		?menu1 <- (menuDiari (dia 1))
		?menu2 <- (menuDiari (dia 2))
		?menu3 <- (menuDiari (dia 3))
		?menu4 <- (menuDiari (dia 4))
		?menu5 <- (menuDiari (dia 5))
		?menu6 <- (menuDiari (dia 6))
		?menu7 <- (menuDiari (dia 7))

		=>
		(bind $?list (obtenirInfoPlats (create$ ?dinar1 ?dinar2 ?dinar3 ?dinar4 ?dinar5 ?dinar6 ?dinar7 ?sopar1 ?sopar2 ?sopar3 ?sopar4 ?sopar5 ?sopar6 ?sopar7 ?postre1 ?postre2 ?postre3 ?postre4 ?postre5 ?postre6 ?postre7)))

		;Aquestes son les que tenim amb aquesta nova seleccio
        (bind ?kcalFinal (nth$ 1 ?list))
		(bind ?protFinal (nth$ 2 ?list))
		(bind ?hidFinal (nth$ 3 ?list))
		(bind ?gFinal (nth$ 4 ?list))
		(bind ?aFinal (nth$ 5 ?list))
		(bind ?mFinal (nth$ 6 ?list))
		(bind ?fFinal (nth$ 7 ?list))
		(bind ?sFinal (nth$ 8 ?list))
		(bind ?colFinal (nth$ 9 ?list))
		(bind ?vitFinal (nth$ 10 ?list))


        ;Potencialment definitius
        (bind ?mDef (+ ?mFinal ?m0))
        (bind ?eDef (+ ?kcalFinal ?e0))
        (bind ?pDef (+ ?protFinal ?p0))
        (bind ?vDef (+ ?vitFinal ?v0))
        (bind ?fDef (+ ?fFinal ?f0))
        (bind ?hDef (+ ?hidFinal ?h0))
        (bind ?gDef (+ ?gFinal ?g0))
        (bind ?sDef (+ ?sFinal ?s0))
        (bind ?cDef (+ ?colFinal ?c0))


        (retract ?p1)
        (retract ?p2)
        (retract ?p3)
        (retract ?p4)
        (retract ?p5)
        (retract ?p6)
        (retract ?p7)
        (retract ?p8)
        (retract ?p9)
        (retract ?p10)
        (retract ?p11)
        (retract ?p12)
        (retract ?p13)
        (retract ?p14)
        (retract ?p15)
        (retract ?p16)
        (retract ?p17)
        (retract ?p18)
        (retract ?p19)
        (retract ?p20)
        (retract ?p21)


        ;Farem les comparacions per a veure si aconseguim que estigui en un rang de +- 20%
        (if (or (and (> ?mDef (* 0.8 ?minerals))
                     (> ?eDef (* 0.8 ?energia)) (< ?eDef (* 1.2 ?energia))
                     (> ?pDef (* 0.8 ?prot)) (< ?pDef (* 1.2 ?prot))
                     (> ?vDef (* 0.8 ?vitamines))
                     (> ?fDef (* 0.8 ?fibra))
                     (> ?hDef (* 0.8 ?hidrats)) (< ?hDef (* 1.2 ?hidrats))
                     (< ?gDef (* 1.2 ?greixosMaxims))
                     (< ?sDef (* 1.2 ?sucre))
                     (< ?cDef (* 1.2 ?colesterolMax))
                    )
                (> ?counter 10000)) then

            (modify ?menu1 (dinarPrimer ?dinar1)(soparSegon ?sopar1)(dinarPostres ?postre1))
            (modify ?menu2 (dinarPrimer ?dinar2)(soparSegon ?sopar2)(dinarPostres ?postre2))
            (modify ?menu3 (dinarPrimer ?dinar3)(soparSegon ?sopar3)(dinarPostres ?postre3))
            (modify ?menu4 (dinarPrimer ?dinar4)(soparSegon ?sopar4)(dinarPostres ?postre4))
            (modify ?menu5 (dinarPrimer ?dinar5)(soparSegon ?sopar5)(dinarPostres ?postre5))
            (modify ?menu6 (dinarPrimer ?dinar6)(soparSegon ?sopar6)(dinarPostres ?postre6))
            (modify ?menu7 (dinarPrimer ?dinar7)(soparSegon ?sopar7)(dinarPostres ?postre7))

            (modify ?ms (Minerals ?mDef) (Proteines ?pDef) (Vitamines ?vDef) (Fibra ?fDef)(Hidrats_de_carboni ?hDef) (Greixos ?gDef) (Sucre ?sDef) (Colesterol ?cDef)(Energia ?eDef))


            (assert (menuCompletat))

		else  ;fem aquesta "TRAMPA" per tal que segueixi buscant combinacions fins que en trobi una
            (assert (pos1 (random 1 ?nDP)))
            (assert (pos2 (random 1 ?nDP)))
            (assert (pos3 (random 1 ?nDP)))
            (assert (pos4 (random 1 ?nDP)))
            (assert (pos5 (random 1 ?nDP)))
            (assert (pos6 (random 1 ?nDP)))
            (assert (pos7 (random 1 ?nDP)))

            (assert (pos8 (random 1 ?nSS)))
            (assert (pos9 (random 1 ?nSS)))
            (assert (pos10 (random 1 ?nSS)))
            (assert (pos11 (random 1 ?nSS)))
            (assert (pos12 (random 1 ?nSS)))
            (assert (pos13 (random 1 ?nSS)))
            (assert (pos14 (random 1 ?nSS)))

            (assert (pos15 (random 1 ?nP)))
            (assert (pos16 (random 1 ?nP)))
            (assert (pos17 (random 1 ?nP)))
            (assert (pos18 (random 1 ?nP)))
            (assert (pos19 (random 1 ?nP)))
            (assert (pos20 (random 1 ?nP)))
            (assert (pos21 (random 1 ?nP)))

            (retract ?cc)
            (assert (counter (+ ?counter 1)))
        )

)



(defrule MENUS::MostrarHemArribatAlFinal "Aqui simplement indiquem que ja no es debug i que treiem el menu"
    (nou_usuari)
    (not (FI))
    ?mc <- (menuCompletat)
    ?cc <- (counter ?counter)
    =>
    (retract ?mc)
    (assert (imprimir))
    (assert (dia 1))

    (printout t crlf)
    (printout t crlf)
    (printout t "---------------------------------------------------------------" crlf)
    (printout t "------------------     Final weekly menu     ------------------" crlf)
    (printout t "---------------------------------------------------------------" crlf)
    (printout t crlf)

    (if (> ?counter 10000) then
        (printout t "Unfortunately we have not been able to find a menu that follows all restriction." crlf)
        (printout t "Despite this, we show you the closest one we found. " crlf)
    )
)



(deffunction MENUS::precisioDoble (?q)

    (bind ?r (/ (integer (* ?q 100)) 100))
    (return ?r))


;Potser mostrar la informacio nutricional diaria fent una crida a la funcio i imprimint-ho
(defrule MENUS::MostrarMenuDefinitiu "Aquesta regla mostra els menus definitius"
    (imprimir)
    (not(imprimit))
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
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
            (printout t ?i ". " (precisioDoble ?quantitatIngredient) " grams of " (send ?ingredientGeneral get-Nom_ingredient) crlf)
            (bind ?i (+ ?i 1))
        )

        (printout t crlf)


        (if (eq ?d 7) then
            (retract ?dd)
            (assert(imprimit))
        else
            (retract ?dd)
            (assert (dia (+ ?d 1)))
        )
)



(defrule imprimirValorsNutricionals "Imprimim quins son els valors nutricionals setmanals"
        (imprimit)
        (not (FI))
    	?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

		?r <- (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax))

        =>

        (printout t crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t "-----------     Weekly nutritional information     ------------" crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t crlf)
        (printout t "In our nutritional restrictions we give a margin of 20% to be a little flexible" crlf)
        (printout t crlf)

        (printout t "Energy :" crlf)
        (printout t "Recomended from " (* 0.8 ?energia) " kcal to " (* 1.2 ?energia) " kcal:" crlf)

        (printout t "Obtained: " (precisioDoble ?e0) " kcal" crlf)
        (printout t crlf)

        (printout t "Minerals :" crlf)
        (printout t "Recomended at least: " ?minerals " g"crlf)
        (printout t "Obtained: " (precisioDoble ?m0) " g" crlf)
        (printout t crlf)

        (printout t "Proteins :" crlf)
        (printout t "Recomended from " (* 0.8 ?prot) " g to " (* 1.2 ?prot) "g:" crlf)
        (printout t "Obtained: " (precisioDoble ?p0) " g" crlf)
        (printout t crlf)

        (printout t "Vitamins :" crlf)
        (printout t "Recomended at least: " (* 0.8 ?vitamines) " g" crlf)
        (printout t "Obtained: " (precisioDoble ?v0) " g" crlf)
        (printout t crlf)

        (printout t "Fibra :" crlf)
        (printout t "Recomended at least: " (* 0.8 ?fibra) " g" crlf)
        (printout t "Obtained: " (precisioDoble ?f0) " g" crlf)
        (printout t crlf)

        (printout t "Hidrats :" crlf)
        (printout t "Recomended from " (* 0.8 ?hidrats) " g to " (* 1.2 ?hidrats) "g:" crlf)
        (printout t "Obtained: " (precisioDoble ?h0) " g" crlf)
        (printout t crlf)

        (printout t "Greixos :" crlf)
        (printout t "Recomended at most: " (* 1.2 ?greixosMaxims) " g" crlf)
        (printout t "Obtained: " (precisioDoble ?g0) " g" crlf)
        (printout t crlf)

        (printout t "Sugar :" crlf)
        (printout t "Recomended at most: " (* 1.2 ?sucre) " g:" crlf)
        (printout t "Obtained: " (precisioDoble ?s0) " g"crlf)
        (printout t crlf ) 

        (printout t "Colesterol :" crlf)
        (printout t "Recomended at most: " (* 1.2 ?colesterolMax) " g:" crlf)
        (printout t "Obtained: " (precisioDoble ?c0) " g" crlf)
        (printout t crlf)
        (assert (FI))

)
