<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" type="text/css" href="proyecto.css">
    <!-- Bootstrap CSS -->

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">

    <title>Hello, world!</title>
</head>
<body class="cuerpo">
<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="#">GYM</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="#">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ejercicios por grupos musculares
                </a>
                <?php $grupo = Grupo::all(); ?>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    @foreach($grupo as  $g)
                        <li><a class="dropdown-item" href="#">{{$g->grupo}}</a></li>
                    @endforeach


                </ul>
            </li>

            <li class="nav-item">
                <a class="nav-link" href="#">Rutinas Predefinidas</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Rutinas personalizadas</a>
            </li>
        </ul>
        <form class="form-inline mt-2 mt-md-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Busqueda" aria-label="Search">
            <button class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar</button>
        </form>
    </div>
</nav>

<div class="container">
    @yield('content')
</div>

</body>
</html>