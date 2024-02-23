<?php

use App\Http\Controllers\TerminoController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return redirect('/terminos');
});

// Habilitar la vista de acercaDe
Route::get('/terminos/acercaDe', function () {
    return view('/glosario.acercaDe');
});

// Habilitar el controlador de terminos, con la ruta /terminos
Route::resource('/terminos', TerminoController::class);

// Habilitar la vista de los conceptos
Route::get('terminos/{id}', 'TerminoController@show')->name('terminos.show');



