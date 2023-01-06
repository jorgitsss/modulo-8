Guia Aprendisajes Grupales Modulo 8 - Grupo 3
Proyecto en Ruby on Rails integrado con Heroku
***
## Aprendizaje Esperado 1
<dl>
  <dt>Desarrollo</dt>
  <dd>Crear Proyecto en rails sin texting deniminado doomscrolling</dd>
  
```rails
rails new doomscrolling -T
```
  <dd>Crear controlador y dos vistas </dd>
  
```rails
rails generate controller articles notice
```
</dl>

***
## Aprendizaje Esperado 2
<dl>
  <dt>Desarrollo</dt>
  <dd>Frame Bootstrap aplicado a controlador y dos vistas</dd>
</dl>
aplicamos el cdn obtenido en https://getbootstrap.com/
dentro del layout de nuestro proyecto ubicado en 
app>views>layouts>application.html.erb

***
## Aprendizaje Esperado 3
<dl>
  <dt>Desarrollo</dt>
  <dd>Creado Scaffold llamado bloggers para las noticias y aplicado card de bootstrap a la lista</dd>

```rails
rails generate scaffold bloggers titulo:string contenido:string link:string tipo:integer estado:integer
```
</dl>
