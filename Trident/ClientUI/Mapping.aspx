<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mapping.aspx.cs" Inherits="Trident.ClientUI.Mapping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mapping</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
    <style>
    .card-body
    {
      background-color: #F4EDEC;
      box-shadow: 5px 5px 5px lightblue;
    }
  </style>
<body style="border:1px solid black;">
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: lightgray; color: black; font-size: 30px;">Camera Association</h1>
		<div class="container">
  <div class="card">
    <div class="card-body">
      <p class="card-text">
        <fieldset>
            <legend style="padding-left:50px;">Jurisdiction</legend>
            <label style="font-size: 20px; padding-left: 10px;"><b>Unit:</b></label>
            <select style="width: 350px;" class="custom-select">
              <option>Select</option>
            </select>
            <label style="padding-left: 100px; font-size: 20px;"><b>Police Station:</b></label>
            <select style="width: 350px;" class="custom-select">
              <option>Select</option>
            </select>
                  <br><br>

            <label style="font-size: 20px; padding-left: 10px;"><b>Point:</b></label>
            <select style="width: 350px;" class="custom-select">
              <option>Select</option>
            </select>
       </fieldset>
      </p>
    </div>
  </div>
</div>
                            <br><br>
  <div class="container">
  <div class="card">
    <div class="card-body" style="background-color:#F4EDEC;">
      <p class="card-text">
        <fieldset>
      <legend style="padding-left:50px;">Camera</legend>
      <label style="font-size: 20px; padding-left:100px;"><b>Camera Name:</b></label>
      <select style="width: 350px;" class="custom-select">
        <option>Select</option>
      </select>
      <button type="button" class="btn btn-primary">Add</button>
               <br><br>
      <table border="2" style="width:1080px; border: 1px solid black;"  class="table table-striped">
        <tr>
          <th style="background-color:lightblue;">Sr. No.</th>
          <th style="background-color:lightblue;;">Unit</th>
          <th style="background-color:lightblue;">Police Station</th>
          <th style="background-color:lightblue;">Point</th>
          <th style="background-color:lightblue;">Camera</th>
          <th style="background-color:lightblue;">Remove</th>
        </tr>
        <tr>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
        </tr>
        <tr>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
        </tr>
        <tr>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
        </tr>
        <tr>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
        </tr>
        <tr>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
          <td>Bind</td>
        </tr>
      </table>
    </fieldset>

      </p>
    </div>
  </div>
</div>
		

							<br>

		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-primary">Send to E-Challan</button>
		<button type="button" class="btn btn-primary">cancel</button>
						<br><br>
</div>
</div>
</div>

        </div>
    </form>
</body>
</html>
