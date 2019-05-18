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
    (Quantitat_nutrient 47.3)
    (Tipus_nutrient Sucre))


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
    (Quantitat_nutrient 2.8)
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
    (Quantitat_nutrient 15.32)
    (Tipus_nutrient Greixos))
([I9195N6] of  Nutrient
    (Quantitat_nutrient 0.54)
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
    (Quantitat_nutrient 14.08)
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
    (Quantitat_nutrient 8.3)
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
    (Quantitat_nutrient 16.61)
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
    (Quantitat_nutrient 26.61)
    (Tipus_nutrient Greixos))
([I18964N6] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Colesterol))
([I18964N7] of  Nutrient
    (Quantitat_nutrient 25.7)
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
    (Quantitat_nutrient 20.83)
    (Tipus_nutrient Greixos))
([I18972N6] of  Nutrient
    (Quantitat_nutrient 0.01)
    (Tipus_nutrient Colesterol))
([I18972N7] of  Nutrient
    (Quantitat_nutrient 2.08)
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
    (Quantitat_nutrient 42.63)
    (Tipus_nutrient Greixos))
([I19904N6] of  Nutrient
    (Quantitat_nutrient 23.99)
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
    (Quantitat_nutrient 19.0)
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


([I43410] of InfoIngredient
    (Familia Legumes)
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
    (Quantitat_nutrient 5.5)
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






; --------------------------------------------------------------------------------

([P0] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP0_0] [IP0_1] [IP0_2] [IP0_3])
    (Nom "Rice to the cuban with fried egg")
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

([IP3_0] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I42204])
    (Quantitat 91.35))
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
    (Quantitat 76.12))
([IP3_4] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11625])
    (Quantitat 2.54))


([P4] of  Plat
    (Apat Dinar Sopar)
    (Ingredients [IP4_0] [IP4_1] [IP4_2] [IP4_3] [IP4_4] [IP4_5])
    (Nom "Rice three delights")
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Quantitat 0.86))
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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Tipus_plat 1r 2n))

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
    (Quantitat 161.67))
([IP14_1] of  IngredientConcret
    (Cocci%C3%B3 Fresc)
    (Ingredient_general [I11956])
    (Quantitat 80.83))
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
    (Quantitat 2.02))
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
    (Quantitat 4.63))
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
    (Tipus_plat 1r 2n))

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
					(printout t " Eliminem el plat " (instance-name ?plat) crlf)
					(send ?plat delete)
					(bind ?FI TRUE)
        )

        (bind ?a (send ?ingredientGeneral get-Nom_ingredient))
            (if (and(= (str-compare ?P ?a) 0) (eq ?FI FALSE)) then
                            (printout t " Eliminem el plat " (instance-name ?plat) "perque conte" ?P crlf)
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
                        (printout t " Eliminem el plat " (instance-name ?plat) " per contenir " ?quantitat " grams del nutrient " ?n " i ser de la familia " ?f crlf)
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
	(bind ?ingredients_plat (send ?plat get-Ingredients))
	(progn$ (?ingredient ?ingredients_plat)
        (bind ?ingredientGeneral (send ?ingredient get-Ingredient_general))
        (if (member$ ?n (send ?ingredientGeneral get-Temporada)) then
            (printout t " Potenciem el plat " (instance-name ?plat) " perque te un ingredient de temporada "crlf)
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
	(bind ?ingredients_plat (send ?plat get-Ingredients))
	(progn$ (?ingredient ?ingredients_plat)
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
    (assert (infoNutricionalMenu))
    (assert (menusDiaris creats))
    (assert (menuDiari (dia 1)))
    (assert (menuDiari (dia 2)))
    (assert (menuDiari (dia 3)))
    (assert (menuDiari (dia 4)))
    (assert (menuDiari (dia 5)))
    (assert (menuDiari (dia 6)))
    (assert (menuDiari (dia 7)))
    (assert (dia 1))
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


;ANEM A CALCULAR UN MENU

;Aqui completem el 60% del menu per exemple. De moment no assignem cap segon plat del dinar o sopar
(defrule MENUS::completarMenu "Completem el menu amb els plats que falten"
    (declare (salience -2))
    (nou_usuari)
    (ValorNutricionalPlats)

    ?dd <- (dia ?d)

    ;carreguem els nutrients que tenim del menu fins ara
    ?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))


    ?menu <- (menuDiari (dia ?d))
    ;si cal podem jugar en marcar nosaltres la posicio per tal que sigui sempre dels primers
    ?recE <- (solucionOrdenadaE (posicio ?posE) (plat ?platE1))
    ?recDP1 <- (solucionOrdenadaDP (posicio ?posDP) (plat ?platDP1))
    ?recDPostres1 <- (solucionOrdenadaP (posicio ?posDPostres) (plat ?platDPostres1))
    ?recSP1 <- (solucionOrdenadaDS (posicio ?posSP) (plat ?platSP1))
    ?recSPostres1 <- (solucionOrdenadaP (posicio ?posSPostres) (plat ?platSPostres1))

    =>
        (modify ?menu (esmorzar ?platE1)(dinarPrimer ?platDP1)(soparPrimer ?platSP1)(dinarPostres ?platDPostres1)(soparPostres ?platSPostres1))

        ;actualitzem la informacio del menu setmanal
        (bind $?info (obtenirInfoPlats (create$ ?platE1 ?platDP1 ?platSP1 ?platDPostres1 ?platSPostres1)))
        (printout t ?info crlf)
		(bind ?kcal (+ ?e0 (nth$ 1 ?info)))
		(bind ?prot (+ ?p0 (nth$ 2 ?info)))
		(bind ?hid (+ ?h0 (nth$ 3 ?info)))
		(bind ?g (+ ?g0 (nth$ 4 ?info)))
		(bind ?m (+ ?m0 (nth$ 6 ?info)))
		(bind ?f (+ ?f0 (nth$ 7 ?info)))
		(bind ?s (+ ?s0 (nth$ 8 ?info)))
		(bind ?col (+ ?c0 (nth$ 9 ?info)))
		(bind ?vit (+ ?v0 (nth$ 10 ?info)))


        (modify ?ms (Energia ?kcal)(Minerals ?m) (Proteines ?prot) (Vitamines ?vit) (Fibra ?f)(Hidrats_de_carboni ?hid) (Greixos ?g) (Sucre ?s) (Colesterol ?col))

        (printout t ?d crlf)
        (retract ?dd)
        (assert (dia (+ ?d 1)))
)

(defrule MENUS:asdlfj
    ?dd <- (dia 8)
    (numeroSoparSegons ?nSS)
    (numeroDinarSegons ?nDS)
    =>
    (retract ?dd)
    (assert (counter 1))
    (assert (menuCompletat1))

    (assert (pos1 (random 1 ?nDS)))
    (assert (pos2 (random 1 ?nDS)))
    (assert (pos3 (random 1 ?nDS)))
    (assert (pos4 (random 1 ?nDS)))
    (assert (pos5 (random 1 ?nDS)))
    (assert (pos6 (random 1 ?nDS)))
    (assert (pos7 (random 1 ?nDS)))

    (assert (pos8 (random 1 ?nSS)))
    (assert (pos9 (random 1 ?nSS)))
    (assert (pos10 (random 1 ?nSS)))
    (assert (pos11 (random 1 ?nSS)))
    (assert (pos12 (random 1 ?nSS)))
    (assert (pos13 (random 1 ?nSS)))
    (assert (pos14 (random 1 ?nSS)))
)


(defrule MENUS::completarLaResta "Completem el que queda de menu per tal que compleixi les restriccions"
		(nou_usuari)
		(menuCompletat1)
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


		?cc <- (counter ?c)

        (numeroSoparSegons ?nSS)
        (numeroDinarSegons ?nDS)

		;aqui sabem el que tenim
		?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

		?r <- (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax))

        ;Trobem dinars
		?d1 <- (solucionOrdenadaDS (posicio ?pos1) (plat ?dinar1))
		?d2 <- (solucionOrdenadaDS (posicio ?pos2) (plat ?dinar2))
		?d3 <- (solucionOrdenadaDS (posicio ?pos3) (plat ?dinar3))
		?d4 <- (solucionOrdenadaDS (posicio ?pos4) (plat ?dinar4))
		?d5 <- (solucionOrdenadaDS (posicio ?pos5) (plat ?dinar5))
		?d6 <- (solucionOrdenadaDS (posicio ?pos6) (plat ?dinar6))
		?d7 <- (solucionOrdenadaDS (posicio ?pos7) (plat ?dinar7))

		;Trobem sopars
		?s1 <- (solucionOrdenadaDS (posicio ?pos8) (plat ?sopar1))
		?s2 <- (solucionOrdenadaDS (posicio ?pos9) (plat ?sopar2))
		?s3 <- (solucionOrdenadaDS (posicio ?pos10) (plat ?sopar3))
		?s4 <- (solucionOrdenadaDS (posicio ?pos11) (plat ?sopar4))
		?s5 <- (solucionOrdenadaDS (posicio ?pos12) (plat ?sopar5))
		?s6 <- (solucionOrdenadaDS (posicio ?pos13) (plat ?sopar6))
		?s7 <- (solucionOrdenadaDS (posicio ?pos14) (plat ?sopar7))

		;carreguem els menus
		?menu1 <- (menuDiari (dia 1))
		?menu2 <- (menuDiari (dia 2))
		?menu3 <- (menuDiari (dia 3))
		?menu4 <- (menuDiari (dia 4))
		?menu5 <- (menuDiari (dia 5))
		?menu6 <- (menuDiari (dia 6))
		?menu7 <- (menuDiari (dia 7))

		=>

		(bind $?list (obtenirInfoPlats (create$ ?dinar1 ?dinar2 ?dinar3 ?dinar4 ?dinar5 ?dinar6 ?dinar7 ?sopar1 ?sopar2 ?sopar3 ?sopar4 ?sopar5 ?sopar6 ?sopar7)))

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

		;Aquests son els nutrients que ens falten per aconseguir
        (bind ?m (- ?minerals ?m0))
        (bind ?e (- ?energia ?e0))
        (bind ?p (- ?prot ?p0))
        (bind ?v (- ?vitamines ?v0))
        (bind ?f (- ?fibra ?f0))
        (bind ?h (- ?hidrats ?h0))
        (bind ?g (- ?greixosMaxims ?g0))
        (bind ?s (- ?sucre ?s0))
        (bind ?c (- ?colesterolMax ?c0))


        ;Farem les comparacions per a veure si aconseguim que estigui en un rang de +- 20%
        (if (or (and (and (> ?mFinal (* 0.8 ?m0)) (< ?mFinal (* 1.2 ?m0)))
                    (and (> ?kcalFinal (* 0.8 ?e0)) (< ?mFinal (* 1.2 ?e0)))
                    (and (> ?protFinal (* 0.8 ?p0)) (< ?protFinal (* 1.2 ?p0)))
                    (and (> ?vitFinal (* 0.8 ?v0)) (< ?vitFinal (* 1.2 ?v0)))
                    (and (> ?fFinal (* 0.8 ?f0)) (< ?fFinal (* 1.2 ?f0)))
                    (and (> ?hidFinal (* 0.8 ?h0)) (< ?hidFinal (* 1.2 ?h0)))
                    (and (> ?gFinal (* 0.8 ?g0)) (< ?mFinal (* 1.2 ?g0)))
                    (and (> ?sFinal (* 0.8 ?s0)) (< ?mFinal (* 1.2 ?s0)))
                    (< ?colFinal (* 1.2 ?c0)))
                (> ?c 10000)) then

            (modify ?menu1 (dinarSegon ?dinar1)(soparSegon ?sopar1))
            (modify ?menu2 (dinarSegon ?dinar2)(soparSegon ?sopar2))
            (modify ?menu3 (dinarSegon ?dinar3)(soparSegon ?sopar3))
            (modify ?menu4 (dinarSegon ?dinar4)(soparSegon ?sopar4))
            (modify ?menu5 (dinarSegon ?dinar5)(soparSegon ?sopar5))
            (modify ?menu6 (dinarSegon ?dinar6)(soparSegon ?sopar6))
            (modify ?menu7 (dinarSegon ?dinar7)(soparSegon ?sopar7))

            ;actualitzem els nutrients del nostre menu
            (modify ?ms (Minerals (+ ?m0 ?mFinal)) (Proteines (+ ?p0 ?protFinal)) (Vitamines (+ ?v0 ?vitFinal)) (Fibra (+ ?f0 ?fFinal))(Hidrats_de_carboni (+ ?h0 ?hidFinal)) (Greixos (+ ?g0 ?gFinal)) (Sucre (+ ?s0 ?sFinal)) (Colesterol (+ ?c0 ?colFinal))(Energia (+ ?e0 ?kcalFinal)))

            (facts)
            (assert(menuCompletat))

		else  ;fem aquesta "TRAMPA" per tal que segueixi buscant combinacions fins que en trobi una
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

            (assert (pos1 (random 1 ?nDS)))
            (assert (pos2 (random 1 ?nDS)))
            (assert (pos3 (random 1 ?nDS)))
            (assert (pos4 (random 1 ?nDS)))
            (assert (pos5 (random 1 ?nDS)))
            (assert (pos6 (random 1 ?nDS)))
            (assert (pos7 (random 1 ?nDS)))
            (assert (pos8 (random 1 ?nSS)))
            (assert (pos9 (random 1 ?nSS)))
            (assert (pos10 (random 1 ?nSS)))
            (assert (pos11 (random 1 ?nSS)))
            (assert (pos12 (random 1 ?nSS)))
            (assert (pos13 (random 1 ?nSS)))
            (assert (pos14 (random 1 ?nSS)))

            (retract ?cc)
            (assert (counter (+ ?c 1)))
        )

)





(defrule MENUS::MostrarHemArribatAlFinal "Aqui simplement indiquem que ja no es debug i que treiem el menu"
(nou_usuari)
?mc <- (menuCompletat)
=>
(assert (imprimir))
(printout t crlf)
(printout t "---------------------------------------------------------------" crlf)
(printout t "------------------     Final weekly menu     ------------------" crlf)
(printout t "---------------------------------------------------------------" crlf)
(printout t crlf)
(facts)
)


;Potser mostrar la informacio nutricional diaria fent una crida a la funcio i imprimint-ho
(defrule MENUS::MostrarMenuDefinitiu "Aquesta regla mostra els menus definitius"
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
        (assert (imprimit))
)



(defrule imprimirValorsNutricionals "Imprimim quins son els valors nutricionals setmanals"
        (imprimit)

    	?ms <- (infoNutricionalMenu (Minerals ?m0) (Proteines ?p0) (Vitamines ?v0) (Fibra ?f0)(Hidrats_de_carboni ?h0) (Greixos ?g0) (Sucre ?s0) (Colesterol ?c0)(Energia ?e0))

		?r <- (restriccionsNutricionalsSetmanals (kilocalories ?energia) (vitamines ?vitamines) (hidratsCarboni ?hidrats)(greixosMaxims ?greixosMaxims) (proteines ?prot) (fibra ?fibra) (minerals ?minerals) (sucre ?sucre)(colesterol ?colesterolMax))

        =>

        (printout t crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t "-----------     Weekly nutritional information     ------------" crlf)
        (printout t "---------------------------------------------------------------" crlf)
        (printout t crlf)

        (printout t "Energy :" crlf)
        (printout t "Recomended: " ?energia crlf)
        (printout t "Obtained: " ?e0 crlf)
        (printout t crlf)

        (printout t "Minerals :" crlf)
        (printout t "Recomended: " ?minerals crlf)
        (printout t "Obtained: " ?m0 crlf)
        (printout t crlf)

        (printout t "Proteins :" crlf)
        (printout t "Recomended: " ?prot crlf)
        (printout t "Obtained: " ?p0 crlf)
        (printout t crlf)

        (printout t "Vitamins :" crlf)
        (printout t "Recomended: " ?vitamines crlf)
        (printout t "Obtained: " ?v0 crlf)
        (printout t crlf)

        (printout t "Fibra :" crlf)
        (printout t "Recomended: " ?fibra crlf)
        (printout t "Obtained: " ?f0 crlf)
        (printout t crlf)

        (printout t "Hidrats :" crlf)
        (printout t "Recomended: " ?hidrats crlf)
        (printout t "Obtained: " ?h0 crlf)
        (printout t crlf)

        (printout t "Greixos :" crlf)
        (printout t "Recomended: " ?greixosMaxims crlf)
        (printout t "Obtained: " ?g0 crlf)
        (printout t crlf)

        (printout t "Sugar :" crlf)
        (printout t "Recomended: " ?sucre crlf)
        (printout t "Obtained: " ?s0 crlf)
        (printout t crlf)

        (printout t "Colesterol :" crlf)
        (printout t "Recomended: " ?colesterolMax crlf)
        (printout t "Obtained: " ?c0 crlf)
        (printout t crlf)
        (assert (FI))

)
