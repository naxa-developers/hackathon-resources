# Hackathon

PostGIS Documentation [Link](https://postgis.net/documentation/)

PostGIS Hackathon Presentation [Link](https://docs.google.com/presentation/d/1kUKjeVPoLCle0my1GGi88YE_AFvwFE7iWtTWVsOv4sQ/edit?usp=sharing)

Colab Notebook [Link](https://colab.research.google.com/drive/1xXsXA5lVXtERIhFMp6Ep2uL68LlhTPS2?usp=sharing)

## Database Information

```Python
HOST=68.183.89.82
PORT=55432
POSTGRES_DB=hackathon
POSTGRES_USER=osmuser
POSTGRES_PASSWORD=hotosmhackathon
```

osm2pgsql --create -H localhost -U postgres -P 5432 -d hackathon -W --extra-attributes --output=flex --style raw.lua coulibistrie_dominica.osm.pbf