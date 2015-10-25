<form class="form-horizontal" action="http://localhost:3000/directors/create_row">
  <div class="form-group">
    <label class="col-sm-2 control-label">Name</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="Name" name="name">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Bio</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3" placeholder="Bio" name="bio"></textarea>
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">DOB</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="DOB" name="dob">
    </div>
  </div>
  <div class="form-group">
    <label class="col-sm-2 control-label">Image URL</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" placeholder="image_url" name="url">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Submit</button>
    </div>
  </div>
</form>
