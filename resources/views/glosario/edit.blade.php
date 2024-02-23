@extends('layout/template')
@section('title', 'Añadir concepto')
@section('contenido')
<main>
    <div class="container py-4">
        <h2><i class="fa-solid fa-pen-to-square"></i> Editar concepto</h2>
        <hr>

        @if($errors->any())
            <div class="alert alert-warning" role="alert">
                <ul>
                    @foreach($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <!-- Formulario de registro para añadir un concepto nuevo -->
        <form action="{{ url('terminos/'.$termino->id) }}" method="POST" enctype="multipart/form-data">
            @method('PUT') <!-- Permite la visualización de los datos -->
            @csrf
            <div class="row mb-3">
                <label for="concepto" class="col-sm-2 col-form-lable">Concepto: </label>
                <div class="col-sm-5">
                    <input type="text" name="concepto" id="concepto" class="form-control" value="{{ $termino->concepto }}" required>
                </div>
            </div>

            <div class="row mb-3">
                <label for="definicion" class="col-sm-2 col-form-lable">Definición: </label>
                <div class="col-sm-5">
                    <input type="text" name="definicion" id="definicion" class="form-control" value="{{ $termino->definicion }}" required>
                </div>
            </div>

            <div class="row mb-3">
                <label for="imagen" class="col-sm-2 col-form-lable">Imagen: </label>
                <div class="col-sm-5">
                    <input type="file" name="imagen" id="imagen" class="form-control" value="{{ $termino->id }}" required>
                </div>
            </div>

            <button type="submit" class="btn btn-success mb-3 btn-sm">Editar concepto</button>

            <p>
            <a href="{{ url('/terminos') }}" class="btn btn-primary btn-sm" role="button">Regresar al inicio</a>
            </p>

        </form>
    </div>
</main>