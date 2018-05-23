<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row">
		<div class="col-md-12">

			<h2>usuarios</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>grupomuscular</th>
						<th>ejercicio</th>
						<th>imagen</th>
						<th>explicacion</th>
						<th>tiempo</th>
						<th>material</th>
						<th>posicion</th>
						<th>consejo</th>
						<th>Opciones</th>
					</tr>
				<?php $__currentLoopData = $usuarios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $usuario): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

				<?php $__currentLoopData = $ejercicios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ejercicio): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<tr>
						<td><?php echo e($ejercicio['id']); ?></td>
						<td><?php echo e($ejercicio['grupomuscular']); ?></td>
						<td><?php echo e($ejercicio['ejercicio']); ?></td>
						<td><img src="<?php echo e(URL::asset('rutinas/'.$ejercicio->ruta)); ?>"></td>
						<td><?php echo e($ejercicio['ruta']); ?></td>
						<td><?php echo e($ejercicio['explicacion']); ?></td>
						<td><?php echo e($ejercicio['tiempo']); ?></td>
						<td><?php echo e($ejercicio['material']); ?></td>
						<td><?php echo e($ejercicio['posicion']); ?></td>
						<td><?php echo e($ejercicio['consejo']); ?></td>
						<td>


							<a href="<?php echo e(route('usuario_editar', ['id' => $usuario['id']])); ?>" class="btn btn-default">Editar</a>
							<a href="<?php echo e(route('usuario_rutina', ['id' => $usuario['id']])); ?>" class="btn btn-default">Ver rutinas
							<a href="<?php echo e(route('usuario_eliminar', ['id' => $usuario['id']])); ?>" class="btn btn-danger"">Eliminar</a>

				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>



			</table>


		</div>
	</div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>