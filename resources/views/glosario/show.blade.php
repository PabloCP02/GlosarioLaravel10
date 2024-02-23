@extends('layout/template')
@section('title', 'Glosario')
@section('contenido')
<!-- Encabezado -->
@include('layout/header')
    <!-- Barra de navegación -->
    @include('glosario/nav')
        <!-- Contenido -->
        <div class="col-9 mx-0 mb-5">
            <h1 class="text-center pt-5">{{ $concepto->concepto }}</h1>
            <p class="p-3">{{ $concepto->definicion }}</p>
            <div class="d-flex justify-content-center mb-3">
                <img src="{{ asset($concepto->imagen) }}" alt="" class="glosario">
            </div>
            <div class="d-flex justify-content-end">
                <div><a href="{{ url('terminos/'.$termino->id.'/edit') }}" class="btn btn-warning btn-sm mb-3 me-3" role="button"><i class="fa-solid fa-pen-to-square"></i> Editar concepto</a></div>
                <form action="{{ url('terminos/'.$termino->id) }}" method="POST">
                    @method("DELETE")
                    @csrf
                    <button type="submit" class="btn btn-danger btn-sm" onclick="confirmDelete()"><i class="fa-solid fa-trash"></i> Eliminar</button>
                </form>
               
            </div>
            <div class="mb-5">
                &nbsp;
            </div>
        </div>
    </div>
</main>

<script>
    function confirmDelete() {
        if (confirm('¿Estás seguro de que deseas eliminar este elemento?')) {
            document.getElementById('deleteForm').submit();
        }
    }
</script>
