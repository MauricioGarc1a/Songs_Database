# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
cafetacuba = Artist.create ({name:"Cafetacuba", birth_date:Date.parse("1989"), country:"Mexico", picture:"http://www.universalmusicmagazine.com/wp-content/uploads/2013/03/CTS.jpg",
  plot:"Café Tacvba, también conocido como Café Tacuba, es un conjunto de rock alternativo, originario de Ciudad Satélite del Área Metropolitana de la Ciudad de México."})
zoe = Artist.create ({name:"Zoe", birth_date:Date.parse("1995"), country:"Mexico", picture:"http://img14.deviantart.net/c2ea/i/2006/310/5/0/zoe___oro_by_vr_gfx.jpg",
    plot:"Zoe es una banda mexicana de rock formada en 1995 en Cuernavaca y oficializada en la Ciudad de México "})

Song.destroy_all
Song.create([
  {title:"Eres", plot:"Spanish Rock", picture:"https://elcafetindelas5.files.wordpress.com/2012/08/cafe-tacuba-cuatro-caminos-del-2003-delantera.jpg",
  realease_date:Date.parse("2007"), duration:3.10},
  {title:"Ingrata", plot:"Spanish Folklore", picture:"http://1.bp.blogspot.com/-iZotOTb0Z-0/Uh4C7sWK0cI/AAAAAAAAB5M/Axew1qI7SKs/s1600/2.jpg",
  realease_date:Date.parse("1990"), duration:4.15},
  {title:"Las Flores", plot:"Spanish Rock", picture:"http://www.ramiroburr.com/ramiros_blog/cafetacuba_pic.jpeg",
  realease_date:Date.parse("1995"), duration:3.55},
  {title:"Avientame", plot:"Movie Song", picture:"https://upload.wikimedia.org/wikipedia/en/c/c6/Cafe_Tac_tiempo_transcurrido_front.jpg",
  realease_date:Date.parse("1990"), duration:2.50},
  {title:"Love", plot:"Spanish Rock", picture:"http://www.elrocknomuere.com/blog/img/albums/musica+de+fondo+mtv+unplugged.jpg",
  realease_date:Date.parse("2002"), duration:2.15},
  {title:"Besame Mucho", plot:"Spanish Rock", picture:"http://www.buenamusica.com/media/fotos/discos/z/zoe/zoe_281107.jpg",
  realease_date:Date.parse("2004"), duration:5.07},
  {title:"Poli", plot:"Spanish Rock", picture:"http://www.buenamusica.com/media/fotos/discos/z/zoe/zoe_zoe.jpg",
  realease_date:Date.parse("2011"), duration:3.55},
  {title:"Asteroide", plot:"Movie Song", picture:"http://www.elrocknomuere.com/blog/img/albums/rocanlover.jpg",
  realease_date:Date.parse("2010"), duration:2.50},
  ])
