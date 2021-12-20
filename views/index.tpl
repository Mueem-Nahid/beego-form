<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Registration Form</title>
  </head>
  <body class="container">
    <h2 class="mt-5 text-info text-center fw-bold">Please Register First</h2>
    <form class="mt-5" action="/" method="POST">
      <div class="mb-3">
        <label class="form-label">First Name</label>
        <input type="text" class="form-control" id="inputFirstName" name="inputFirstName" Required>
      </div>

      <div class="mb-3">
        <label class="form-label">Last Name</label>
        <input type="text" class="form-control" id="inputLastName" name="inputLastName" Required>
      </div>

      <div class="mb-3">
        <label class="form-label">Email address</label>
        <input type="email" class="form-control" id="inputEmail" name="inputEmail" Required>
        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
      </div>

      <div class="mb-3">
        <label class="form-label">Phone</label>
        <input type="number" class="form-control" id="inputPhone" name="inputPhone" Required>
      </div>

      <div class="mb-3">
        <label class="form-label">Password</label>
        <input type="password" class="form-control" id="inputPassword" name="inputPassword" Required>
      </div>

      <div class="mb-3">
        <label class="form-label">Date of Birth</label>
        <input type="date" class="form-control" id="inputDate" name="inputDate" Required>
      </div>

      <div class="my-3 alert-danger" role="alert">
        <p> {{.Desc}} </p>
      </div>

      <button type="submit" onClick="myFunction()" class="btn btn-primary">Submit</button>
    </form>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
  </body>
</html>
