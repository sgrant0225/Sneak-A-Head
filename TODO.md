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