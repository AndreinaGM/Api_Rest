<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $this->db=\Config\Database::connect();
        $query= $this->db->query('select peliculas.titulo as
titulo_peliculas,
peliculas.año,
peliculas.precio,
	categorias.nombre as
	nombre_categoria
	from
	peliculas
inner join
categorias
on
peliculas.id_categorias = categorias.id_categorias;');

$valor = ($query->getResult());

        return $this->response->setJSON($valor);

        //return view('welcome_message');
    }
    
}