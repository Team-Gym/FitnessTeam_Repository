<?php $__env->startSection('content'); ?>

<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>Agregar Rutina</h2>

			<form method="post">
					<?php echo e(csrf_field()); ?>


				  <div class="form-group">
				    <label for="usuario">nombre</label>
				    <input type="text" class="form-control" id="name"
				           placeholder="Introduce tu name" name="name" value="<?php echo e(Input::old('name')); ?>">
				  </div>


				  <div class="form-group">

				    <label for="usuario_id" >usuario_id</label>

				    <select name="usuario_id" id="usuario_id" class="form-control" value="<?php echo e(Input::old('usuario_id')); ?>">

				    			<?php $__currentLoopData = $usuarios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $usuario): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<option value="<?php echo e($usuario['id']); ?>" <?php if($usuario=='$usuario["id"]'): ?>selected <?php endif; ?> ><?php echo e($usuario['nombre']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>

				  </div>

				  <div class="form-group">

				    <label for="modalidad_id" >modalidad_id</label>

				    <select name="modalidad_id" id="modalidad_id" class="form-control" value="<?php echo e(Input::old('modalidad_id')); ?>">

				    			<?php $__currentLoopData = $modalidades; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $modalidad): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<option value="<?php echo e($modalidad['id']); ?>" <?php if($modalidad=='$modalidad["id"]'): ?>selected <?php endif; ?> ><?php echo e($modalidad['modalidad']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>

				  </div>

				  <div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>

				  </div>
				  <div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>
					<div class="form-group">

				    <label for="ejercicio_id" >ejercicio_id</label>

				    <select name="ejercicio_id" id="ejercicio_id" class="form-control" value="<?php echo e(Input::old('ejercicio_id')); ?>">

				    			<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

					<option value="<?php echo e($ejercicio['id']); ?>" <?php if($ejercicio=='$ejercicio["id"]'): ?>selected <?php endif; ?> ><?php echo e($ejercicio['ejercicio']); ?></option>
								<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

					</select>

				  </div>







					 <input class="btn btn-default" type="submit" value="Enviar" />


				</form>

						</div>
					</div>
			</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>