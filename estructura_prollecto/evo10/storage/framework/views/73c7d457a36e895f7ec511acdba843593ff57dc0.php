<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Evo1.0</title>


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<link rel="stylesheet" href="<?php echo e(URL::asset('/assets/css/estilo.css')); ?>" />



</head>
<body>


<div class="container">
	<div class="row">
		<div class="col">
			<header>
				<h1>App Gym</h1>
			</header>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col">
			<ul>
				<a href="<?php echo e(url('/indice/index')); ?>"><li>indice</li></a>
				<a href="<?php echo e(url('/usuario/index')); ?>"><li>usuarios</li></a>
				<a href="<?php echo e(url('/usuario/nuevo')); ?>"><li>Nuevo usuario</li></a>
				<a href="<?php echo e(url('/rutina/nuevo')); ?>"><li>Nueva rutina</li></a>
				<a href="<?php echo e(url('/ejercicio/index')); ?>"><li>ejercicios</li></a>
			</ul>
		</div>
	</div>
</div>




<?php echo $__env->yieldContent('content'); ?>


<div class="container">
	<div class="row">
		<div class="col">
			<footer>

				<h5>Desarrollado por: <b>Javier Puerta y Ferran Jasse</b></h5>
			</footer>
		</div>
	</div>
</div>



</body>
</html>
