<h1><%= @name %></h1>

<div class="container">
    <div class="row">
      <a href="">Edit</a>
      <a href="http://localhost:3000/directors/delete/<%= @id %>">Delete</a>
    <div class="row">
        <div class="col-sm-2"> <%= @dob %></div>
        <div class="col-sm-8"> <img src="<%= @image %>"></div>
    </div>
    <div class="row">
        <div class="col-sm-10"> <%= @bio %> </div>
    </div>
</div>
