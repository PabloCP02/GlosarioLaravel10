<?php

namespace App\Http\Controllers;

use App\Models\Termino;
use Illuminate\Http\Request;

class TerminoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // Cargar los datos de los terminos en objeto $terminos
        $terminos = Termino::all();
        // Habilitar la vista
        return view('glosario.index', ['terminos' => $terminos]); // En ruta alumnos, busca la vista
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // Habilitar la vista de terminos.create
        return view('glosario.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Aqui se reuperan los datos del formulario en variable $request
        // Antes de guardar, Laravel tiene reglas de validación para el fórmulario
        $request->validate([
            'concepto' => 'required|max:100',
            'definicion' => 'required',
            'imagen' => 'required|max:80'
        ]);

        // Crear objeto para guardar los datos en la BD
        $termino = new Termino();

        // Condicion para verificar si se esta cargando la img del formulario
        if($request->hasFile('imagen')){
            // Obtener el archivo
            $file = $request->file('imagen');
            // Guardar la carpeta de destino en una variable para después concatenar con la img
            $destino = 'img/conceptos/';
            // Asignar nombre a la imagen
            $fileName = $file->getClientOriginalName();
            // Mover la imagen a la carpeta de destino
            $uploadSuccess = $request->file('imagen')->move($destino, $fileName);
            $termino->imagen = $destino.$fileName;
        }

        // Si todos los datos son correctos entonces se guarda en la tabla de la BD
        // (nombre del campo de la tabla) -> (name del input)
        $termino->concepto = $request->input('concepto');
        $termino->definicion = $request->input('definicion');
        $termino->save(); // Guardar registro en la BD
        // cuando guarde, presentar un mensaje en la vista mensaje
        return view('glosario.mensaje', ['msg' => 'Concepto añadido correctamente']);
    }

    /**
     * Display the specified resource.
     */
    public function show(int $id)
    {
        $terminos = Termino::all();
        $termino = Termino::find($id);
        // Crear variable el id que se selecciono
        $concepto = Termino::find($id);
        //Retornar vista del concepto
        return view('glosario.show', ['terminos' => $terminos, 'termino' => $termino], compact('concepto')); // El compact() sirve para enviar la variable a la vista
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        //
        $termino = Termino::find($id); // Buscar el id del alumno
        // Ahora enviamos a la vista de edit de los datos
        return view('glosario.edit', ['termino' => $termino]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        //
        $request->validate([
            'concepto' => 'required|max:100',
            'definicion' => 'required',
            'imagen' => 'required|max:80'
        ]);

        // Crear objeto para guardar los datos en la BD
        $termino = Termino::find($id);

        // Condicion para verificar si se esta cargando la img del formulario
        if($request->hasFile('imagen')){
            // Obtener el archivo
            $file = $request->file('imagen');
            // Guardar la carpeta de destino en una variable para después concatenar con la img
            $destino = 'img/conceptos/';
            // Asignar nombre a la imagen
            $fileName = $file->getClientOriginalName();
            // Mover la imagen a la carpeta de destino
            $uploadSuccess = $request->file('imagen')->move($destino, $fileName);
            $termino->imagen = $destino.$fileName;
        }

        // Si todos los datos son correctos entonces se guarda en la tabla de la BD
        // (nombre del campo de la tabla) -> (name del input)
        $termino->concepto = $request->input('concepto');
        $termino->definicion = $request->input('definicion');
        $termino->save(); // Guardar registro en la BD
        // cuando guarde, presentar un mensaje en la vista mensaje
        return view('glosario.mensaje', ['msg' => 'Concepto editado correctamente']);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        // Eliminamos el termino
        $termino = Termino::find($id); // Buscar al alumno a eliminar
        $termino->delete(); // Elimina
        return view('glosario.mensaje', ['msg' => 'Concepto eliminado']);
    }
}
