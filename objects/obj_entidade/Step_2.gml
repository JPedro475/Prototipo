//Colisao Horizontal


//Checando Colisão
var _col = instance_place(x + velh, y, obj_ground);

if (_col) 
{
	//Colisão direita
	if(velh > 0)
	{
		//Colidindo com a parte esquerda da parede
		x = _col.bbox_left + (x - bbox_right);
	}
	//Colisão esquerda
	if (velh <0)
	{
		x = _col.bbox_right + ( x - bbox_left);
	}
	velh = 0;
}


x += velh;

var _col = instance_place(x,y + velv, obj_ground)

if (_col)
{
	//Indo para baixo
	if (velv > 0)
	{
		y = _col.bbox_top + (y - bbox_bottom);
	}
	//Indo para cima
	if (velv < 0)
	{
		y = _col.bbox_bottom + (y - bbox_top);
	}
	velv =0;
}
y += velv;