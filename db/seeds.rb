Category.create([
  {
    name: "Classiques",
    description: "Les indémodables de la maison Zoï"
  },
  {
    name: "Saisonniers",
    description: "Des créations variant au rythme des saisons"
  },
  {
    name: "Spéciaux",
    description: "Pour les occasions spéciales, de la galette des rois aux glaces artisanales !"
  },
])

Cake.create([
  {
    name: "Tarte Citron-basilic",
    description: "Une des premières créations Zoï à l'acidité parfaitement équilibrée",
    image: "",
    available: true,
    category_id: 1
  },
  {
    name: "Marron-chocolat",
    description: "La gourmandise du marron dans un entremet qui vous réchauffera le coeur",
    image: "",
    available: true,
    category_id: 2
  },
  {
    name: "Galette des Rois",
    description: "Notre frangipanne vegan et sa pâte feuilletée, avec une fêve licorne !",
    image: "",
    available: true,
    category_id: 3
  },
])