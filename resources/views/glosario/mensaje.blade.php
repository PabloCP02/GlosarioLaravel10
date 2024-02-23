@extends('layout/template')
@section('title', 'Glosario')
@section('contenido')
<main>
    <div class="container py-4">
        <h2><i class="fa-solid fa-circle-check"></i> {{$msg}}</h2>
        <hr>
        <p class="mt-4">
            <a href="{{ url('/terminos') }}" class="btn btn-primary btn-sm" role="button">Regresar al menú principal</a>
        </p>
    </div>
</main>

