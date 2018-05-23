<?php $__env->startSection('content'); ?>
<div class="container">
	<div class="row">
		<div class="col-md-12">


<h2>Evo1.0 Indice</h2>


<table class="table table-striped">
					<tr>

						<th>usuario</th>

					</tr>

					<tr>
						<td>soy  <?php echo e($resultado); ?> </td>
					</tr>
					<tr>
						<td>soy  <?php echo e($user); ?> </td>
					</tr>
			</table>
			<h2>usuarios</h2>

			<table class="table table-striped">
					<tr>
						<th>Id</th>
						<th>nombre</th>
						<th>apellido</th>
						<th>sexo</th>
						<th>dob</th>
						<th>dias</th>
						<th>nivel</th>
						<th>modalidad</th>
						<th>usuario</th>
						<th>psw</th>
						<th>Opciones</th>
					</tr>

				<?php $__currentLoopData = $usuarios; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $usuario): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
					<tr>
						<td><?php echo e($usuario['id']); ?></td>
						<td><?php echo e($usuario['nombre']); ?></td>
						<td><?php echo e($usuario['apellido']); ?></td>
						<td><?php echo e($usuario['sexo']); ?></td>
						<td><?php echo e($usuario['dob']); ?></td>
						<td><?php echo e($usuario['dias']); ?></td>
						<td><?php echo e($usuario['nivel']); ?></td>
						<td><?php echo e($usuario['modalidad']); ?></td>
						<td><?php echo e($usuario['usuario']); ?></td>
						<td><?php echo e($usuario['psw']); ?></td>

						<td>
							<a href="<?php echo e(route('usuario_editar', ['id' => $usuario['id']])); ?>" class="btn btn-default">Editar</a>
							<a href="<?php echo e(route('usuario_rutina', ['id' => $usuario['id']])); ?>" class="btn btn-default">Ver rutinas
							<a href="<?php echo e(route('usuario_eliminar', ['id' => $usuario['id']])); ?>" class="btn btn-danger"">Eliminar</a>

						</td>
					</tr>
				<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>



			</table>

		</div>
	</div>
</div>

<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.master', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>