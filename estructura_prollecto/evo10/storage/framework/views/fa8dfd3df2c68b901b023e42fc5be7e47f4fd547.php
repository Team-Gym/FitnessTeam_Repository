<?php $__env->startSection('content'); ?>

<div class="container">
	<div class="row">
		<div class="col-md-6">
			<h2>Notas de</h2>
			<table class="table table-striped">
					<tr>
						<th>id</th>
						<th>nombre</th>
						<th>modalidad_id</th>
						<th>usuario_id</th>
						<th>ejercicio_id</th>
						<th>ejercicio1</th>
						<th>ejercicio2</th>
						<th>ejercicio3</th>
						<th>ejercicio4</th>
						<th>ejercicio5</th>
						<th>ejercicio6</th>
						<th>ejercicio7</th>
						<th>ejercicio8</th>
						<th>ejercicio9</th>
						<th>ejercicio10</th>
					</tr>
					<?php $__currentLoopData = $rutina; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $rutinas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr>
						<td><?php echo e($rutinas['id']); ?></td>
					    <td><?php echo e($rutinas['nombre']); ?></td>
						<td><?php echo e($rutinas['modalidad_id']); ?></td>
						<td><?php echo e($rutinas['usuario_id']); ?></td>
						<td><?php echo e($rutinas['ejercicio_id']); ?></td>
						<td><?php echo e($rutinas['ejercicio1']); ?></td>
						<td><?php echo e($rutinas['ejercicio2']); ?></td>
						<td><?php echo e($rutinas['ejercicio3']); ?></td>
						<td><?php echo e($rutinas['ejercicio4']); ?></td>
						<td><?php echo e($rutinas['ejercicio5']); ?></td>
						<td><?php echo e($rutinas['ejercicio6']); ?></td>
						<td><?php echo e($rutinas['ejercicio7']); ?></td>
						<td><?php echo e($rutinas['ejercicio8']); ?></td>
						<td><?php echo e($rutinas['ejercicio9']); ?></td>
						<td><?php echo e($rutinas['ejercicio10']); ?></td>
						<td>
							<a href="<?php echo e(route('rutina_editar', ['id' => $rutinas['id']])); ?>" class="btn btn-default">Editar</a>
							<a href="<?php echo e(route('rutina_eliminar', ['id' => $rutinas['id']])); ?>" class="btn btn-danger"">Eliminar</a>
						</td>
					</tr>

					<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


			</table>

		</div>
	</div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>