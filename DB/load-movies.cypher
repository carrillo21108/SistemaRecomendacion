CREATE
      (Brian:User{
          name:'Brian Anthony',
          lastname:'Carrillo Monzon',
          age:20,
          gender:'M',
          mail:'bcarrillo0311@gmail.com',
          password:'123'
      }),
      (Carlos:User{
          name:'Carlos Edgardo',
          lastname:'Lopez Barrera',
          age:20,
          gender:'M',
          mail:'carloslpez217@gmail.com',
          password:'123'
      }),
      (Jennifer:User{
          name:'Jennifer Michelle',
          lastname:'Toxcon Ordoñez',
          age:18,
          gender:'F',
          mail:'jennifertoxcon123@gmail.com',
          password:'123'

        }),
      (Andrea:User{
          name:'Andrea Ximna',
          lastname:'Ramirez Argueta',
          age:18,
          gender:'F',
          mail:'ximeniz22@gmail.com',
          password:'123'
        }),
      (Nathalia:User{
          name:'Nathalia Irene',
          lastname:'Garcia Florea',
          age:18,
          gender:'F',
          mail:'garciassszx@gmail.com',
          password:'123'
        }),
      (Monica:User{
          name:'Monica Lucía',
          lastname:'Guzman Palma',
          age:18,
          gender:'F',
          mail:'palma12@gmail.com',
          password:'123'
})

CREATE
      (Terror:Genre{
          name:'Terror',
          description:'Su principal objetivo es causar miedo, horror, incomodidad o preocupación'
      }),
      (Aventura:Genre{
          name:'Aventura',
          description:'Predominan las nuevas experiencias y situaciones.'
      }),
      (Comedia:Genre{
          name:'Comedia',
          lastname:'Diseñadas específicamente para provocar la risa o la alegría entre los espectadores.'
       }),
      (Romance:Genre{
          name:'Romance',
          description:'Creadas para sentir amor.'
        }),
      (Drama:Genre{
          name:'Drama',
          description:'Son drámaticas y llegan a sentir muchas emociones a la vez.'
          }),
      (Accion:Genre{
          name:'Accion',
          description:'Situaciones de accion y aventura con explosiones.'
          }),
      (Fantasia:Genre{
          name:'Fantasia',
          description:'Ficcion especulativa.'
    
})

CREATE
      (Exorcismo:Movie{
          name:'Excorismo documentado',
          api_id:335787
      }),
      (Sonic:Movie{
          name:'Sonic:La pelicula',
          api_id:335788
      }),
      (Chiquito:Movie{
          name:'Chiquito pero peligroso',
          api_id:335789
      }),
      (Chucky:Movie{
          name:'Chucky el muñeco',
          api_id:335776
      }),
      (OrgulloYPrejuicio:Movie{
          name:'Orgullo y prejuicio',
          api_id:335897
       }),
      (Spencer:Movie{
          name:'Spencer',
          api_id:335998

        }),
      (FastAndFurious9:Movie{
          name:'Fast & Furious 9',
          api_id:335654

        }),
      (Red:Movie{
          name:'Red',
          api_id:335654
          
})

MATCH (a:User),(b:Movie) WHERE a.name = '' AND b.name = '' CREATE (a)-[:IN_LIKE_MOVIE]->(b)
CREATE (Brian)-[:IN_LIKE_GENRE]->(Terror)
CREATE (Carlos)-[:IN_LIKE_GENRE]->(Terror)
CREATE (Jennifer)-[:IN_LIKE_GENRE]->(Romance)
CREATE (Andrea)-[:IN_LIKE_GENRE]->(Fantasia)
CREATE (Monica)-[:IN_LIKE_GENRE]->(Romance)
CREATE (Nathalia)-[:IN_LIKE_GENRE]->(Terror)

MATCH (a:Movie),(b:Genre) WHERE a.name = '' AND b.name = '' CREATE (a)-[:IN_GENRE]->(b)
CREATE (Exorcismo)-[:IN_GENRE]->(Terror)
CREATE (Chucky)-[:IN_GENRE]->(Terror)
CREATE (Sonic)-[:IN_GENRE]->(Aventura)
CREATE (Chiquito)-[:IN_GENRE]->(Comedia)
CREATE (OrgulloYPrejuicio)-[:IN_GENRE]->(Romance)
CREATE (Red)-[:IN_GENRE]->(Fantasia)

CREATE (Carlos)-[:IN_LIKE_MOVIE]->(Sonic)
CREATE (Carlos)-[:IN_LIKE_MOVIE]->(Chiquito)
CREATE (Nathalia)-[:IN_LIKE_MOVIE]->(OrgulloYPrejuicio)
CREATE (Monica)-[:IN_LIKE_MOVIE]->(Spencer)

MATCH movies=(Brian:User{
          name:'Brian Anthony',
          lastname:'Carrillo Monzon',
          age:20,
          gender:'M',
          mail:'bcarrillo0311@gmail.com',
          password:'123'})-[:IN_LIKE_GENRE]->(genre)<-[:IN_GENRE]-(movie)
RETURN movie.name