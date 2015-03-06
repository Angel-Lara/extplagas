<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<?php 
foreach($css_files as $file): ?>
	<link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>
<?php foreach($js_files as $file): ?>
	<script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
body
{
	font-family: Arial;
	font-size: 14px;
}
a {
    color: blue;
    text-decoration: none;
    font-size: 14px;
}
a:hover
{
	text-decoration: underline;
}
</style>
</head>
<body>
	<div>
		<a href='<?php echo site_url('tablas/customers_management')?>'>Clientes</a> |
		<a href='<?php echo site_url('tablas/orders_management')?>'>Pedidos</a> |
		<a href='<?php echo site_url('tablas/products_management')?>'>Productos</a> |
		<a href='<?php echo site_url('tablas/offices_management')?>'>Oficinas</a> | 
		<a href='<?php echo site_url('tablas/employees_management')?>'>Empleados</a> |
		<a href='<?php echo site_url('tablas/multigrids')?>'>Multigrid</a>|
		<a href='<?php echo site_url('tablas/administration_management')?>'>Administradores</a>
		
	</div>
	<div style='height:20px;'></div>  
    <div>
		<?php echo $output; ?>
    </div>
</body>
</html>
