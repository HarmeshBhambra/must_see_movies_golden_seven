<h1>Directors</h1>

<a href="http://localhost:3000/directors/new_form">Add a New Director</a>

<div class="container">
    <div class="row">
        <div class="col-sm-2">Name</div>
        <div class="col-sm-2">Bio</div>
        <div class="col-sm-2">DOB</div>
        <div class="col-sm-4">Image</div>
        <div class="col-sm-2">Actions</div>
    </div>
    <% @list_of_directors.each do |director| %>
    <div class="row">
        <div class="col-sm-2"> <%= director.name %> </div>
        <div class="col-sm-2">
            <p><%= director.bio %></p>
        </div>
        <div class="col-sm-2"> <%= director.dob %> </div>
        <div class="col-sm-4"> <img src="<%= director.image_url %>" width="80"> </div>
        <div class="col-sm-2">
            <a href="http://localhost:3000/directors/<%= director.id %>">Read</a>
            <a href="http://localhost:3000/directors/<%= director.id %>">Edit</a>
            <a href="http://localhost:3000/directors/delete/<%= director.id %>">Delete</a>
        </div>
    </div>
    <% end %>
</div>
