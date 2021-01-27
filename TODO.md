Users 
has_many :shoes
has_many :entries
has_many :raffles, through: :entries

User can join raffles through entries
there needs to an entry form for the user to fill out to enter the raffle
the user can join as many entries they would like

*not to sure about the has_many shoes association and why I created that association

Shoe
has_many :raffles
has_many :users, through: :raffles

index page code needs to be fixed <% @shoes.each.with_index(1) do |shoes_obj, idx| %> 
    <li><%= idx%>. <%= link_to shoes_obj.name, shoe_path(shoes_obj) %>
    <br/> Release date: <%= shoes_obj.release_date %></li>
    <br/>
  <% end %>

  Added a branch called sneakahead_revised
   and trying to merge it to the master branch

   Forms
   - Where are your forms going to go? 
       Forms typically go in new and edit routes.  Your creating a NEW form or EDITING an existing form. 
       -Curently I have one submittable form. 
       -

   Nested Form- 
    1. Where do I want implement my nested form?  
      - Right now I was trying to implement my nested form in my raffles page.  Where it displays the users attributes in the raffle form.  user will have to fill in there names and addresses, etc to enter the raffle
   -However, I think I want to have a link in the show page with enter raffle for that particular shoe.  Where is displays a single page of the show you want to enter the raffle for. 

   - The shoe index page listed all the shoes in the site that you enter raffles for.  

   Routes
   Include nested resource show or index 

   Scope methods-
    Where does it make sense to scope?  
    -Scope methods goes to in the model files
    