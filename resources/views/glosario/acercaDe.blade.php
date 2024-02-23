@extends('layout/template')
@section('title', 'Acerca De')
@section('contenido')
<!-- Encabezado -->
@include('layout/header')
<!-- Barra de navegacion y contenido -->
    <div class="mt-3">
        <a class="ms-5 btn-primary home" aria-current="page" href="{{ url('terminos') }}"><i class="fa-solid fa-house"></i></a>
    </div>
    <div class="row mx-0">
        
        <div class="col-4 mx-0">
            <div class="d-flex justify-content-center ">
                <img src="{{ asset('img/logoEmpresa.jpeg') }}" alt="" width="300px" class="logoEmpresa">
            </div>
        </div>

        <div class="col-8 mx-0">
            <h1 class="pb-3">Acerca de</h1>
            <h3>Autores: </h3>
            <ul>
                <h4><li>Jessica Olvera Gordillo</li></h4>
                <h4><li>Pablo Joaquin Cervantes Pech</li></h4>
            </ul>
            <h3 class="mt-3">Técnologias usadas:</h3>
            <div class="d-flex pt-3">
                <div>
                    <img src="{{ asset('img/laravel.png') }}" alt="" class="herramientas">
                </div>
                <div class="px-3">
                    <img src="{{ asset('img/html.png') }}" alt="" class="herramientas">
                </div>
                <div>
                    <img src="{{ asset('img/css.png') }}" alt="" class="herramientas">
                </div>
                <div class="px-3">
                    <img src="{{ asset('img/bootstrap.png') }}" alt="" class="herramientas">
                </div>
            </div>

        </div>
    </div>
</div>