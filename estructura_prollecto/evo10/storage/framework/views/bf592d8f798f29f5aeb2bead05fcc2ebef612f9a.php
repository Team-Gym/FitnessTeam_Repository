<?php $__env->startSection('content'); ?>




<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Rutina</h2>

			<form method="post">
			<?php echo e(csrf_field()); ?>

				  <div class="form-group">
				    <label for="nombre">Nombre</label>
				    <input type="text" class="form-control" id="nombre"
				           placeholder="Introduce tu nombre" name="nombre" value="<?php echo e(Input::old('nombre')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="apellido" >apellido</label>
				    <input type="text" class="form-control" id="apellido"
				           placeholder="apellido" name="apellido" value="<?php echo e(Input::old('apellido')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="sexo" >sexo</label>
				    <input type="text" class="form-control" id="sexo"
				           placeholder="sexo" name="sexo" value="<?php echo e(Input::old('sexo')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="dob" >dob</label>
				    <input type="date" class="form-control" id="dob"
				           placeholder = "Dob" name="dob" value="<?php echo e(Input::old('dob')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="dias" >dias</label>
				    <input type="number" class="form-control" id="dias"
				           placeholder="dias" name="dias" value="<?php echo e(Input::old('dias')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="nivel" >nivel</label>
				    <input type="number" class="form-control" id="nivel"
				           placeholder="nivel" name="nivel" value="<?php echo e(Input::old('nivel')); ?>">
				  </div>
				 <div class="form-group">
				    <label for="modalidad" >modalida</label>
				    <input type="text" class="form-control" id="modalidad"
				           placeholder="modalidad" name="modalidad" value="<?php echo e(Input::old('modalidad')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="usuario" >usuario</label>
				    <input type="text" class="form-control" id="usuario"
				           placeholder="usuario" name="usuario" value="<?php echo e(Input::old('usuario')); ?>">
				  </div>
				  <div class="form-group">
				    <label for="psw" >psw</label>
				    <input type="number" class="form-control" id="psw"
				           placeholder="psw" name="psw" value="<?php echo e(Input::old('psw')); ?>">
				  </div>

				   <input class="btn btn-default" type="submit" value="ENVIAR" />
				</form>

						</div>
					</div>
			</div>



<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>