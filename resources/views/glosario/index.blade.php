@extends('layout/template')
@section('title', 'Glosario')
@section('contenido')
<!-- Encabezado -->
@include('layout/header')
    <!-- Barra de navegacion -->
    @include('glosario/nav')  
        <!-- Contenido -->
        <div class="col-9 mx-0 mb-5">
            <h1 class="text-center pt-5">Glosario de Términos</h1>
            <div class="d-flex justify-content-center">
                <img src="img/glosario.jpg" alt="" class="mt-2 mb-5 glosario">
            </div>
            <div class="d-flex justify-content-center pe-4 py-5">
                <div><a href="{{ url('terminos/create') }}" class="btn btn-primary btn-sm mb-3" role="button"><i class="fa-solid fa-plus"></i> Agregar concepto</a></div>
            </div>
        </div>
    </div>
</main>

