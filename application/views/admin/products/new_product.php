<?=heading($title,4);

$attributes = array('id' => 'form_login', 'class'=>'users'); 

$marca = array('name'=>'marca', 'id'=>'marca','class'=>'input','placeholder'=>'Marca',
                      'value'=>set_value('marca'), 'size'=> '35');	

$nombre = array('name'=>'nombre', 'id'=>'nombre','class'=>'input','placeholder'=>'Nombre',
                      'value'=>set_value('nombre'), 'size'=> '35');
					  
$precio = array('name'=>'precio', 'id'=>'precio','class'=>'input','placeholder'=>'Precio',
                      'value'=>set_value('precio'), 'size'=> '35');					  

$opcion = array('name'=>'opcion', 'id'=>'opcion','class'=>'input','placeholder'=>'Opci&oacute;n del atributo',
                      'value'=>set_value('opcion'), 'size'=> '35');	
					  				  				  
					  
$atributos = array('name'=>'atributos', 'id'=>'atributos','class'=>'input','placeholder'=>'Atributos del producto',
                      'value'=>set_value('atributos'), 'size'=> '35');					  
					  
$data = array('name'=>'id', 'value'=>set_value('id'));					  

if(validation_errors()){ ?> 
	
<div id="error"><?=validation_errors();?></div>

<?php } ?>

<?=form_open('manage_products/add', $attributes);?>

<div class="padding"><?=form_label('Marca');?></div>
<div class="padding"><?=form_input($marca)?></div>

<div class="padding"><?=form_label('Nombre')?></div>
<div class="padding"><?=form_input($nombre)?></div>

<div class="padding"><?=form_label('Precio')?></div>
<div class="padding"><?=form_input($precio)?></div>

<div class="padding"><?=form_label('Opci&oacute;n del atributo - Ej. Color')?></div>
<div class="padding"><?=form_input($opcion)?></div>

<div class="padding"><?=form_label('Atributo(s) - Ej. Azul,verde')?></div>
<div class="padding"><?=form_input($atributos)?></div>

<?=form_submit(array('name' => 'submit','class'=>'submit','value' => 'Guardar'))?>

<?=form_close();?>

<div class="clear"></div>